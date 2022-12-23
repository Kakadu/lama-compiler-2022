# include <stdio.h>
# include <stdlib.h>
# include <stdarg.h>
# include <string.h>
# include <sys/mman.h>
# include <assert.h>

#define NIMPL fprintf (stderr, "Internal error: "			\
		       "function %s at file %s, line %d is not implemented yet", \
		       __func__, __FILE__, __LINE__);			\
  exit(1);

#define SHOULD_NOT_REACH fprintf (stderr, "Should not reach: "			\
		       "function %s at file %s, line %d", \
		       __func__, __FILE__, __LINE__);			\
  exit(1);

#define OUT_OF_MEMORY fprintf (stderr, "Out of memory: "			\
		       "function %s at file %s, line %d", \
		       __func__, __FILE__, __LINE__);			\
  exit(1);

extern void nimpl (void) { NIMPL }
extern void __pre_gc  ();
extern void __post_gc ();
extern void* alloc    (size_t);

/* GC extra roots */
/* All work with extra roots has to be already done */
# define MAX_EXTRA_ROOTS_NUMBER 32
typedef struct {
  int current_free;
  void ** roots[MAX_EXTRA_ROOTS_NUMBER];
} extra_roots_pool;

static extra_roots_pool extra_roots;

void clear_extra_roots (void) {
  extra_roots.current_free = 0;
}

void push_extra_root (void ** p) {
  if (extra_roots.current_free >= MAX_EXTRA_ROOTS_NUMBER) {
    perror ("ERROR: push_extra_roots: extra_roots_pool overflow");
    exit   (1);
  }
  extra_roots.roots[extra_roots.current_free] = p;
  extra_roots.current_free++;
}

void pop_extra_root (void ** p) {
  if (extra_roots.current_free == 0) {
    perror ("ERROR: pop_extra_root: extra_roots are empty");
    exit   (1);
  }
  extra_roots.current_free--;
  if (extra_roots.roots[extra_roots.current_free] != p) {
    perror ("ERROR: pop_extra_root: stack invariant violation");
    exit   (1);
  }
}

static inline void init_extra_roots (void) {
  extra_roots.current_free = 0;
}
/* end extra roots */

# define UNBOXED(x)  (((int) (x)) &  0x0001)
# define UNBOX(x)    (((int) (x)) >> 1)
# define BOX(x)      ((((int) (x)) << 1) | 0x0001)

# define STRING_TAG  0x00000001
# define ARRAY_TAG   0x00000003
# define SEXP_TAG    0x00000005
# define CLOSURE_TAG 0x00000007 
# define UNBOXED_TAG 0x00000009 // Not actually a tag; used to return from LkindOf

# define LEN(x) ((x & 0xFFFFFFF8) >> 3)
# define TAG(x) (x & 0x00000007)

# define TO_DATA(x) ((data*)((char*)(x)-sizeof(int)))
# define TO_SEXP(x) ((sexp*)((char*)(x)-2*sizeof(int)))

# define ASSERT_BOXED(memo, x)               \
  do if (UNBOXED(x)) failure ("boxed value expected in %s\n", memo); while (0)
# define ASSERT_UNBOXED(memo, x)             \
  do if (!UNBOXED(x)) failure ("unboxed value expected in %s\n", memo); while (0)
# define ASSERT_STRING(memo, x)              \
  do if (!UNBOXED(x) && TAG(TO_DATA(x)->tag) \
	 != STRING_TAG) failure ("string value expected in %s\n", memo); while (0)

typedef struct {
  int tag; 
  char contents[0];
} data; 

typedef struct {
  int tag; 
  data contents; 
} sexp;

static char* chars = "_abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789'";

extern char* de_hash (int);

char* de_hash (int n) {
  //  static char *chars = (char*) BOX (NULL);
  static char buf[6] = {0,0,0,0,0,0};
  char *p = (char *) BOX (NULL);
  p = &buf[5];

#ifdef DEBUG_PRINT
  indent++; print_indent ();
  printf ("de_hash: tag: %d\n", n); fflush (stdout);
#endif
  
  *p-- = 0;

  while (n != 0) {
#ifdef DEBUG_PRINT
    print_indent ();
    printf ("char: %c\n", chars [n & 0x003F]); fflush (stdout);
#endif
    *p-- = chars [n & 0x003F];
    n = n >> 6;
  }

#ifdef DEBUG_PRINT
  indent--;
#endif
  
  return ++p;
}

int Llength (void *p) {
  data *a = TO_DATA(p);
  return BOX(LEN(a->tag));
}

extern void* Bsexp (int bn, ...) {
  va_list args; 
  int     i;    
  int     ai;  
  size_t *p;  
  sexp   *r;  
  data   *d;  
  int n = UNBOX(bn);

  __pre_gc ();
  r = (sexp*) alloc (sizeof(int) * (n+1));
  __post_gc ();
  d = &(r->contents);
  r->tag = 0;
    
  d->tag = SEXP_TAG | ((n-1) << 3);
  
  va_start(args, bn);
  
  for (i=0; i<n-1; i++) {
    ai = va_arg(args, int);
    
    p = (size_t*) ai;
    ((int*)d->contents)[i] = ai;
  }

  r->tag = UNBOX(va_arg(args, int));

  va_end(args);

  return d->contents;
}

void* Barray (int n0, ...) {
  int     n = UNBOX(n0);
  va_list args; 
  int     i, ai; 
  data    *r; 

  __pre_gc ();
  r = (data*) alloc (sizeof(int) * (n+1));
  __post_gc ();

  r->tag = ARRAY_TAG | (n << 3);
  
  va_start(args, n);
  
  for (i = 0; i<n; i++) {
    ai = va_arg(args, int);
    ((int*) r->contents)[i] = ai;
  }
  
  va_end(args);
  return r->contents;
}

void* Bstring (void *p) {
  int   n = strlen (p);
  data *s;

  __pre_gc ();
  push_extra_root (&p);
  s = (data*) alloc (n + 1 + sizeof (int));
  s->tag = STRING_TAG | (n << 3);
  pop_extra_root (&p);

  strncpy (s->contents, p, n + 1);

  __post_gc ();
  return s->contents;
}

void* Belem (void *p, int i0) {
  int i = UNBOX(i0);
  data *a = TO_DATA(p);
  
  if (TAG(a->tag) == STRING_TAG) {
    return (void*) BOX(a->contents[i]);
  }
  
  return (void*) ((int*) a->contents)[i];
}

void* Bsta (void *x, int i, void *v) {
  if (UNBOXED(i)) {
    if (TAG(TO_DATA(x)->tag) == STRING_TAG)((char*) x)[UNBOX(i)] = (char) UNBOX(v);
    else ((int*) x)[UNBOX(i)] = (int) v;

    return v;
  }

  * (void**) x = v;

  return v;
}

extern int Btag (void *d, int t, int n) {
  data *r; 
  
  if (UNBOXED(d)) return BOX(0);
  else {
    r = TO_DATA(d);
#ifndef DEBUG_PRINT
    return BOX(TAG(r->tag) == SEXP_TAG && TO_SEXP(d)->tag == UNBOX(t) && LEN(r->tag) == UNBOX(n));
#else
    return BOX(TAG(r->tag) == SEXP_TAG &&
               GET_SEXP_TAG(TO_SEXP(d)->tag) == UNBOX(t) && LEN(r->tag) == UNBOX(n));
#endif
  }
}

extern int Barray_patt (void *d, int n) {
  data *r; 
  
  if (UNBOXED(d)) return BOX(0);
  else {
    r = TO_DATA(d);
    return BOX(TAG(r->tag) == ARRAY_TAG && LEN(r->tag) == UNBOX(n));
  }
}

static void failure (char *s, ...);
  
extern int Bstring_patt (void *x, void *y) {
  data *rx = (data *) BOX (NULL),
       *ry = (data *) BOX (NULL);
  
  ASSERT_STRING(".string_patt:2", y);
      
  if (UNBOXED(x)) return BOX(0);
  else {
    rx = TO_DATA(x); ry = TO_DATA(y);

    if (TAG(rx->tag) != STRING_TAG) return BOX(0);
    
    return BOX(strcmp (rx->contents, ry->contents) == 0 ? 1 : 0);
  }
}

extern int Bsexp_patt (void *x, int hash, int size) {
  if (UNBOXED(x)) return BOX(0);
  else {
    data *datax = TO_DATA(x);

    if (TAG(datax->tag) != SEXP_TAG) return BOX(0);

    sexp *sexpx = TO_SEXP(x);
    if(*((int*) sexpx) != UNBOX(hash)) return BOX(0);

    return BOX(LEN(datax->tag) == UNBOX(size) ? 1 : 0);
  }
}

void Lwrite (int x) {
  printf ("%d\n", UNBOX (x));
}

int Lread () {
  int result;

  scanf  ("%d", &result);

  return BOX(result);
}

typedef struct {
  char *contents;
  int ptr;
  int len;
} StringBuf;

static StringBuf stringBuf;

# define STRINGBUF_INIT 128

static void createStringBuf () {
  stringBuf.contents = (char*) malloc (STRINGBUF_INIT);
  stringBuf.ptr      = 0;
  stringBuf.len      = STRINGBUF_INIT;
}

static void deleteStringBuf () {
  free (stringBuf.contents);
}

static void extendStringBuf () {
  int len = stringBuf.len << 1;

  stringBuf.contents = (char*) realloc (stringBuf.contents, len);
  stringBuf.len      = len;
}

static void vprintStringBuf (char *fmt, va_list args) {
  int     written = 0,
          rest    = 0;
  char   *buf     = (char*) BOX(NULL);

 again:
  buf     = &stringBuf.contents[stringBuf.ptr];
  rest    = stringBuf.len - stringBuf.ptr;
  written = vsnprintf (buf, rest, fmt, args);
  
  if (written >= rest) {
    extendStringBuf ();
    goto again;
  }

  stringBuf.ptr += written;
}

static void printStringBuf (char *fmt, ...) {
  va_list args;

  va_start (args, fmt);
  vprintStringBuf (fmt, args);
}


int is_valid_heap_pointer (void *p) {
  return 1;
}

static void printValue (void *p) {
  data *a = (data*) BOX(NULL);
  int i   = BOX(0);
  if (UNBOXED(p)) printStringBuf ("%d", UNBOX(p));
  else {
    if (! is_valid_heap_pointer(p)) {
      printStringBuf ("0x%x", p);
      return;
    }
    
    a = TO_DATA(p);

    switch (TAG(a->tag)) {      
    case STRING_TAG:
      printStringBuf ("\"%s\"", a->contents);
      break;

    case CLOSURE_TAG:
      printStringBuf ("<closure ");
      for (i = 0; i < LEN(a->tag); i++) {
	if (i) printValue ((void*)((int*) a->contents)[i]);
	else printStringBuf ("0x%x", (void*)((int*) a->contents)[i]);
	
	if (i != LEN(a->tag) - 1) printStringBuf (", ");
      }
      printStringBuf (">");
      break;
      
    case ARRAY_TAG:
      printStringBuf ("[");
      for (i = 0; i < LEN(a->tag); i++) {
        printValue ((void*)((int*) a->contents)[i]);
	if (i != LEN(a->tag) - 1) printStringBuf (", ");
      }
      printStringBuf ("]");
      break;
      
    case SEXP_TAG: {
#ifndef DEBUG_PRINT
      char * tag = de_hash (TO_SEXP(p)->tag);
#else
      char * tag = de_hash (GET_SEXP_TAG(TO_SEXP(p)->tag));
#endif      
      
      if (strcmp (tag, "cons") == 0) {
	data *b = a;
	
	printStringBuf ("{");

	while (LEN(a->tag)) {
	  printValue ((void*)((int*) b->contents)[0]);
	  b = (data*)((int*) b->contents)[1];
	  if (! UNBOXED(b)) {
	    printStringBuf (", ");
	    b = TO_DATA(b);
	  }
	  else break;
	}
	
	printStringBuf ("}");
      }
      else {
	printStringBuf ("%s", tag);
	if (LEN(a->tag)) {
	  printStringBuf (" (");
	  for (i = 0; i < LEN(a->tag); i++) {
	    printValue ((void*)((int*) a->contents)[i]);
	    if (i != LEN(a->tag) - 1) printStringBuf (", ");
	  }
	  printStringBuf (")");
	}
      }
    }
    break;

    default:
      printStringBuf ("*** invalid tag: 0x%x ***", TAG(a->tag));
    }
  }
}

static void vfailure (char *s, va_list args) {
  fprintf  (stderr, "*** FAILURE: ");
  vfprintf (stderr, s, args); // vprintf (char *, va_list) <-> printf (char *, ...)
  exit     (255);
}

static void failure (char *s, ...) {
  va_list args;

  va_start (args, s);
  vfailure (s, args);
}

static void fix_unboxed (char *s, va_list va) {
  size_t *p = (size_t*)va;
  int i = 0;
  
  while (*s) {
    if (*s == '%') {
      size_t n = p [i];
      if (UNBOXED (n)) {
	p[i] = UNBOX(n);
      }
      i++;
    }
    s++;
  }
}

extern void Lfailure (char *s, ...) {
  va_list args;
  
  va_start    (args, s);
  fix_unboxed (s, args);
  vfailure    (s, args);
}

extern void Bmatch_failure (void *v, char *fname, int line, int col) {
  createStringBuf ();
  printValue (v);
  failure ("match failure at %s:%d:%d, value '%s'\n",
	   fname, UNBOX(line), UNBOX(col), stringBuf.contents);
}


/* ======================================== */
/*         GC: Mark-and-Copy                */
/* ======================================== */

/* Heap is devided on two semi-spaces called active (to-) space and passive (from-) space. */
/* Each space is a continuous memory area (aka pool, see @pool). */
/* Note, it have to be no external fragmentation after garbage collection. */
/* Memory is allocated by function @alloc. */
/* Garbage collection has to be performed by memory allocator if there is not enough space to */
/* allocate the requested size memory area. */

/* The section implements stop-the-world mark-and-copy garbage collection. */
/* Formally, it consists of 4 stages: */
/* 1. Root set constraction */
/* 2. Mark phase */
/*   I.e. marking each reachable from the root set via a chain of pointers object as alive. */
/* 3. Copy */
/*   I.e. copying each alive object from active space into passive space. */
/* 4. Fix pointers. */
/* 5. Swap spaces */
/*   I.e. active space becomes passive and vice versa. */
/* In the implementation, the first four steps are performed together. */
/* Where root can be found in: */
/* 1) Static area. */
/*   Globals @__gc_data_end and @__gc_data_start are used to idenfity the begin and the end */
/*   of the static data area. They are defined while generating X86 code in src/X86.lama. */
/* 2) Program stack. */
/*   Globals @__gc_stack_bottom and @__gc_stack_top (see runctime/gc_runtime.s) have to be set */
/*   as the begin and the end of program stack or its part where roots can be found. */
/* 3) Traditionally, roots can be also found in registers but our compiler always saves all */
/*   registers on program stack before any external function call. */
/* You have to implement functions that perform traverse static area (@gc_root_scan_data) */
/* and program stack (@__gc_root_scan_stack, see runtime/gc_runtime.s) as well as a function */
/* (@gc_test_and_copy_root) that checks if a word is a valid heap pointer, and, if so, */
/* call copy-function. Copy-function (@gc_copy) has to move an object into passive semi-space, */
/* rest a forward pointer instead of the object, scan object for pointers, call copying */
/* for each found pointer. */

// The begin and the end of static area (are specified in src/X86.lama fucntion genasm)
extern const size_t __gc_data_end, __gc_data_start;

// @L__gc_init is defined in runtime/runtime.s
//   it sets up stack bottom and calls init_pool
//   it is called from the main function (see src/X86.lama function compileX86)
extern void L__gc_init ();
// @__gc_root_scan_stack (you have to define it in runtime/gc_runtime.s)
//   finds roots in program stack and calls @gc_test_and_copy_root for each found root
extern void __gc_root_scan_stack ();

// You also have to define two functions @__pre_gc and @__post_gc in runtime/gc_runtime.s.
// These auxiliary functions have to be defined in oder to correctly set @__gc_stack_top.
// Note that some of our functions (from runtime.c) activation records can be on top of the
// program stack. These activation records contain usual values and thus we do not have a
// way to distinguish pointers from non-pointers. And some of these values may accidentally be
// equal to pointers into active semi-space but maybe not to the begin of an object.
// Calling @gc_copy on such values leads to undefined behavior.
// Thus, @__gc_stack_top has to point before these activation records. 
// Note, you also have to find a correct place(-s) for @__pre_gc and @__post_gc to be called.
// @__pre_gc  sets up @__gc_stack_top if it is not set yet
// NB: make sure you calls __pre_gc everywhere when necessary (see Bstring for example)
extern void __pre_gc  ();
// @__post_gc sets @__gc_stack_top to zero if it was set by the caller
extern void __post_gc ();

/* memory semi-space */
typedef struct {
  size_t * begin;
  size_t * end;
  size_t * current;
  size_t   size;
} pool;

static pool   from_space; // From-space (active ) semi-heap
static pool   to_space;   // To-space   (passive) semi-heap

// initial semi-space size (in bytes)
static size_t SPACE_SIZE = 64;

// @init_to_space initializes to_space
// @flag is a flag: if @SPACE_SIZE has to be increased or not
static void init_to_space (int flag) { NIMPL }

// @free_pool frees memory pool p
static int free_pool (pool * p) { NIMPL }

// swaps active and passive spaces
static void gc_swap_spaces (void) {
    pool tmp = to_space;
    to_space = from_space;
    from_space = tmp;
    to_space.current = to_space.begin;
}

// checks if @p is a valid pointer to the active (from-) space
# define IS_VALID_HEAP_POINTER(p)\
  (!UNBOXED(p) &&		 \
   from_space.begin <= p &&	 \
   from_space.end   >  p)

// checks if @p points to the passive (to-) space
# define IN_PASSIVE_SPACE(p)	\
  (to_space.begin <= p	&&	\
   to_space.end   >  p)

// chekcs if @p is a forward pointer
# define IS_FORWARD_PTR(p)			\
  (!UNBOXED(p) && IN_PASSIVE_SPACE(p))

extern size_t * gc_copy (size_t *obj);
static void * gc (size_t size);

static void extend_space(pool *space) {
    size_t new_size = space->size + SPACE_SIZE;
    size_t current_diff = space->current - space->begin;
    size_t* new_begin = malloc (new_size);
    if(new_begin == NULL) {
        OUT_OF_MEMORY
    }
    size_t* new_end = ((void*) new_begin) + new_size;
    for(size_t i = 0; i < current_diff; i++) {
        size_t p = space->begin[i];
        if(!UNBOXED(p)) {
            size_t diff = ((size_t*) p) - space->begin;
            new_begin[i] = new_begin + diff;
        } else {
            new_begin[i] = p;
        }
    }
    free(space->begin);
    space->begin = new_begin;
    space->end = new_end;
    space->current = new_begin + current_diff;
    space->size = new_size;
}

// @extend_spaces extends size of both from- and to- spaces
static void extend_spaces (void) {
    extend_space(&to_space);
    gc(0); // this forces to move all objects from from_space to to_space
    extend_space(&to_space); // gc swaps spaces, and now we need to enlarge this
}

static size_t* gc_copy_string(size_t* obj) {
    data* obj_data = TO_DATA(obj);
    size_t n = LEN(obj_data->tag);
    size_t data_len = n + 1 + sizeof(int); // FIXME same as in alloc Bstring, maybe should extract
    memcpy(to_space.current, obj_data, data_len);
    size_t* forward = (size_t*) ((data*) to_space.current)->contents;
    to_space.current = (size_t*) (((void*) to_space.current) + data_len);
    return forward;
}

static size_t* gc_copy_array(size_t* obj) {
    data* obj_data = TO_DATA(obj);
    size_t n = LEN(obj_data->tag);
    size_t data_len = sizeof(int) * (n + 1); // FIXME same as in alloc Barray, maybe should extract
    memcpy(to_space.current, obj_data, data_len);
    size_t* forward = (size_t*) ((data*) to_space.current)->contents;
    to_space.current = (size_t*) (((void*) to_space.current) + data_len);
    return forward;
}

static size_t* gc_copy_sexp(size_t* obj) {
    data* obj_data = TO_DATA(obj);
    sexp* obj_sexp = TO_SEXP(obj);
    size_t n = LEN(obj_data->tag);
    size_t sexp_len = sizeof(int) * (n + 2); // FIXME same as in alloc Bsexp, maybe should extract
    memcpy(to_space.current, obj_sexp, sexp_len);
    size_t* forward = (size_t*) ((sexp*) to_space.current)->contents.contents;
    to_space.current = (size_t*) (((void*) to_space.current) + sexp_len);
    return forward;
}

static void gc_copy_all_pointers (size_t *obj) {
    data* obj_data = TO_DATA(obj);
    size_t n;
    switch (TAG(obj_data->tag)) {
        case ARRAY_TAG:
        case SEXP_TAG:
            n = LEN(obj_data->tag);
            break;
        default:
            return;
    }
    for(int i = 0; i < n; i++) {
        size_t** derived = (((size_t*)obj_data->contents) + i);
        size_t* p = *derived;
        if(IS_VALID_HEAP_POINTER(p)) {
            gc_copy (p);
            *derived = *(p - 1); // forward pointer
        }
    }
}

// @gc_copy takes a pointer to an object, copies it
//   (i.e. moves from from_space to to_space)
//   , returns new object location.
extern size_t * gc_copy (size_t *obj) {
    if(IS_FORWARD_PTR(*(obj - 1))) return *obj;

    data* obj_data = TO_DATA(obj);
    size_t* forward;
    fflush(stdout);
    switch (TAG(obj_data->tag)) {
        case STRING_TAG:
            forward = gc_copy_string(obj);
            break;
        case ARRAY_TAG:
            forward = gc_copy_array(obj);
            break;
        case SEXP_TAG:
            forward = gc_copy_sexp(obj);
            break;
        default:
            SHOULD_NOT_REACH
    }
    *(obj - 1) = forward;
    gc_copy_all_pointers(forward);
    return forward;
}

// @gc_test_and_copy_root checks if pointer is a root (i.e. valid heap pointer)
//   and, if so, calls @gc_copy for each found root
extern void gc_test_and_copy_root (size_t ** root) {
    size_t* p = *root;
    if(IS_VALID_HEAP_POINTER(p)) {
        gc_copy(p);
        *root = *(p - 1); // forward pointer
    }
}

// @gc_root_scan_data scans static area for root
//   for each root it calls @gc_test_and_copy_root
static void gc_root_scan_data (void) {
    for(size_t** p = &__gc_data_start; p < &__gc_data_end; p++) { // TODO why we use size_t if in fact it`s 32 bit compiler and in other places we use int...
        gc_test_and_copy_root(p);
    }
    for(int i = 0; i < extra_roots.current_free; i++) { // TODO why we use size_t if in fact it`s 32 bit compiler and in other places we use int...
        gc_test_and_copy_root(extra_roots.roots[i]);
    }
}

extern void gc_root_scan_stack_impl(size_t** stack_bottom, size_t** stack_top) {
    size_t **frame_top = stack_top + 2,
           **frame_bottom = *stack_top;
    while(frame_bottom < stack_bottom) {
        for(size_t** p = frame_top; p < frame_bottom; p++) {
            gc_test_and_copy_root(p);
        }

        frame_top = frame_bottom + 2;
        frame_bottom = *frame_bottom;
    }
    for(size_t** p = frame_top; p < frame_bottom; p++) { // last frame for main function
        gc_test_and_copy_root(p);
    }
}

static void alloc_semi_space(pool* semi_space) {
    size_t* begin = malloc (SPACE_SIZE);
    if(begin == NULL) {
        OUT_OF_MEMORY
    }
    *semi_space = (pool) {
        begin,
        ((void*) begin) + SPACE_SIZE,
        begin,
        SPACE_SIZE
    };
}

// @init_pool is a memory pools initialization function
//   (is called by L__gc_init from runtime/gc_runtime.s)
extern void init_pool (void) {
    // TODO now i expect that to_space and from_space might be in any peace of heap, but maybe i should make then near?
    //      if i`ll change this function it is need to change extend_spaces too
    alloc_semi_space(&from_space);
    alloc_semi_space(&to_space);

    init_extra_roots();
}

// @gc performs stop-the-world mark-and-copy garbage collection
//   and extends pools (i.e. calls @extend_spaces) if necessarily
// @size is a size of the block that @alloc failed to allocate
// returns a pointer the new free block
// I.e.
//   1) call @gc_root_scan_data (finds roots in static memory
//        and calls @gc_test_and_copy_root for each found root)
//   2) call @__gc_root_scan_stack (finds roots in program stack
//        and calls @gc_test_and_copy_root for each found root)
//   3) extends spaces if there is not enough space to be allocated after gc
static void * gc (size_t size) {
    gc_root_scan_data();
    __gc_root_scan_stack();
    gc_swap_spaces();
    if(((void*) from_space.current) + size >= from_space.end) {
        extend_spaces();
    }
    return from_space.current;
}

// @alloc allocates @size memory words
//   it enaibles garbage collection if out-of-memory,
//   i.e. calls @gc when @current + @size > @from_space.end
// returns a pointer to the allocated block of size @size
extern void * alloc (size_t size) {
    while(((void*) from_space.current) + size >= from_space.end) gc (size);

    void* ret = from_space.current;
    from_space.current = ((void*) from_space.current) + size;

    return ret;
}
