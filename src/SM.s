	.file "/home/danilasimanok/Documents/rot_ebal/lama-compiler-2022/src/SM.lama"

	.stabs "/home/danilasimanok/Documents/rot_ebal/lama-compiler-2022/src/SM.lama",100,0,0,.Ltext

	.globl	LcompileSM

	.globl	LevalSM

	.globl	LshowSM

	.globl	LshowSMInsn

	.globl	initSM

	.data

string_5:	.string	"BINOP %s"

string_8:	.string	"CONST %d"

string_6:	.string	"LD %s"

string_3:	.string	"READ"

string_0:	.string	"SM.lama"

string_7:	.string	"ST %s"

string_1:	.string	"Stack is empty\n"

string_4:	.string	"WRITE"

string_2:	.string	"\n"

_init:	.int 0

	.section custom_data,"aw",@progbits

filler:	.fill	10, 4, 1

	.text

.Ltext:

	.stabs "data:t1=r1;0;4294967295;",128,0,0,0

# IMPORT ("Std") / 

# IMPORT ("List") / 

# IMPORT ("World") / 

# IMPORT ("State") / 

# IMPORT ("Expr") / 

# IMPORT ("Buffer") / 

# IMPORT ("Fun") / 

# PUBLIC ("initSM") / 

# PUBLIC ("LshowSMInsn") / 

# PUBLIC ("LshowSM") / 

# PUBLIC ("LevalSM") / 

# PUBLIC ("LcompileSM") / 

# EXTERN ("Lfix") / 

# EXTERN ("Li__Infix_35") / 

# EXTERN ("Li__Infix_36") / 

# EXTERN ("Lid") / 

# EXTERN ("LgetBuffer") / 

# EXTERN ("Li__Infix_6043") / 

# EXTERN ("Li__Infix_604362") / 

# EXTERN ("LconcatBuffer") / 

# EXTERN ("LaddBuffer") / 

# EXTERN ("LlistBuffer") / 

# EXTERN ("LsingletonBuffer") / 

# EXTERN ("LemptyBuffer") / 

# EXTERN ("LperformBinop") / 

# EXTERN ("LevalExpr") / 

# EXTERN ("Li__Infix_6045") / 

# EXTERN ("LemptyState") / 

# EXTERN ("LgetOutput") / 

# EXTERN ("LreadWorld") / 

# EXTERN ("LwriteWorld") / 

# EXTERN ("LcreateWorld") / 

# EXTERN ("Lfilter") / 

# EXTERN ("Lremove") / 

# EXTERN ("Lunzip") / 

# EXTERN ("Lzip") / 

# EXTERN ("LdeepFlatten") / 

# EXTERN ("Lflatten") / 

# EXTERN ("Lfind") / 

# EXTERN ("Lassoc") / 

# EXTERN ("Lreverse") / 

# EXTERN ("Li__Infix_434343") / 

# EXTERN ("Lmap") / 

# EXTERN ("Liter") / 

# EXTERN ("Lfoldr") / 

# EXTERN ("Lfoldl") / 

# EXTERN ("Lsize") / 

# EXTERN ("Llowercase") / 

# EXTERN ("Luppercase") / 

# EXTERN ("LtagHash") / 

# EXTERN ("LflatCompare") / 

# EXTERN ("LcompareTags") / 

# EXTERN ("LkindOf") / 

# EXTERN ("Ltime") / 

# EXTERN ("Lrandom") / 

# EXTERN ("LdisableGC") / 

# EXTERN ("LenableGC") / 

# EXTERN ("Ls__Infix_37") / 

# EXTERN ("Ls__Infix_47") / 

# EXTERN ("Ls__Infix_42") / 

# EXTERN ("Ls__Infix_45") / 

# EXTERN ("Ls__Infix_43") / 

# EXTERN ("Ls__Infix_62") / 

# EXTERN ("Ls__Infix_6261") / 

# EXTERN ("Ls__Infix_60") / 

# EXTERN ("Ls__Infix_6061") / 

# EXTERN ("Ls__Infix_3361") / 

# EXTERN ("Ls__Infix_6161") / 

# EXTERN ("Ls__Infix_3838") / 

# EXTERN ("Ls__Infix_3333") / 

# EXTERN ("Ls__Infix_58") / 

# EXTERN ("Li__Infix_4343") / 

# EXTERN ("Lcompare") / 

# EXTERN ("Lwrite") / 

# EXTERN ("Lread") / 

# EXTERN ("Lfailure") / 

# EXTERN ("Lfexists") / 

# EXTERN ("Lfwrite") / 

# EXTERN ("Lfread") / 

# EXTERN ("Lfclose") / 

# EXTERN ("Lfopen") / 

# EXTERN ("Lfprintf") / 

# EXTERN ("Lprintf") / 

# EXTERN ("LmakeString") / 

# EXTERN ("Lsprintf") / 

# EXTERN ("LregexpMatch") / 

# EXTERN ("Lregexp") / 

# EXTERN ("Lsubstring") / 

# EXTERN ("LmatchSubString") / 

# EXTERN ("Lstringcat") / 

# EXTERN ("LreadLine") / 

# EXTERN ("Ltl") / 

# EXTERN ("Lhd") / 

# EXTERN ("Lsnd") / 

# EXTERN ("Lfst") / 

# EXTERN ("Lhash") / 

# EXTERN ("Lclone") / 

# EXTERN ("Llength") / 

# EXTERN ("Lstring") / 

# EXTERN ("LmakeArray") / 

# EXTERN ("LstringInt") / 

# EXTERN ("global_sysargs") / 

# EXTERN ("Lsystem") / 

# EXTERN ("LgetEnv") / 

# EXTERN ("Lassert") / 

# LABEL ("initSM") / 

initSM:

# BEGIN ("initSM", 0, 0, [], [], []) / 

	.type initSM, @function

	.stabs "initSM:F1",36,0,0,initSM

	.cfi_startproc

	movl	_init,	%eax
	test	%eax,	%eax
	jz	_continue
	ret
_continue:

	movl	$1,	_init
	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LinitSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSinitSM_SIZE,	%ecx
	rep movsl	
	call	initList
	call	initWorld
	call	initState
	call	initExpr
	call	initBuffer
	call	initFun
# SLABEL ("L1") / 

L1:

# CONST (0) / 

	movl	$1,	%ebx
# SLABEL ("L2") / 

L2:

# END / 

	movl	%ebx,	%eax
LinitSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LinitSM_SIZE,	0

	.set	LSinitSM_SIZE,	0

	.size initSM, .-initSM

# LABEL ("LcompileSM") / 

LcompileSM:

# BEGIN ("LcompileSM", 1, 2, [], ["stmt"], [{ blab="L4"; elab="L5"; names=[]; subs=[{ blab="L7"; elab="L8"; names=[]; subs=[{ blab="L52"; elab="L53"; names=[("l_stmt", 1); ("r_stmt", 0)]; subs=[{ blab="L54"; elab="L55"; names=[]; subs=[]; }]; }; { blab="L40"; elab="L41"; names=[("expr", 0)]; subs=[{ blab="L42"; elab="L43"; names=[]; subs=[]; }]; }; { blab="L27"; elab="L28"; names=[("s", 0)]; subs=[{ blab="L29"; elab="L30"; names=[]; subs=[]; }]; }; { blab="L14"; elab="L15"; names=[("s", 1); ("expr", 0)]; subs=[{ blab="L16"; elab="L17"; names=[]; subs=[]; }]; }]; }]; }]) / 

	.type compileSM, @function

	.stabs "compileSM:F1",36,0,0,LcompileSM

	.stabs "stmt:p1",160,0,0,8

	.stabs "l_stmt:1",128,0,0,-8

	.stabs "r_stmt:1",128,0,0,-4

	.stabn 192,0,0,L52-LcompileSM

	.stabn 224,0,0,L53-LcompileSM

	.stabs "expr:1",128,0,0,-4

	.stabn 192,0,0,L40-LcompileSM

	.stabn 224,0,0,L41-LcompileSM

	.stabs "s:1",128,0,0,-4

	.stabn 192,0,0,L27-LcompileSM

	.stabn 224,0,0,L28-LcompileSM

	.stabs "s:1",128,0,0,-8

	.stabs "expr:1",128,0,0,-4

	.stabn 192,0,0,L14-LcompileSM

	.stabn 224,0,0,L15-LcompileSM

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLcompileSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompileSM_SIZE,	%ecx
	rep movsl	
# SLABEL ("L4") / 

L4:

# SLABEL ("L7") / 

L7:

# LINE (103) / 

	.stabn 68,0,103,0

	.stabn 68,0,103,.L0-LcompileSM

.L0:

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L14") / 

L14:

# DUP / 

	movl	%ecx,	%esi
# TAG ("Assn", 2) / 

	movl	$14313885,	%edi
	movl	$5,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L12") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L12
# LABEL ("L13") / 

L13:

# DROP / 

# JMP ("L11") / 

	jmp	L11
# LABEL ("L12") / 

L12:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L16") / 

L16:

# LINE (104) / 

	.stabn 68,0,104,.L1-LcompileSM

.L1:

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("LcompileExpr", 1, false) / 

	pushl	%ebx
	call	LcompileExpr
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# SEXP ("ST", 1) / 

	movl	$5853,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$1697575,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_434343", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_434343
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L17") / 

L17:

# JMP ("L6") / 

	jmp	L6
# SLABEL ("L15") / 

L15:

# SLABEL ("L27") / 

L27:

# LABEL ("L11") / 

L11:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Read", 1) / 

	movl	$23109769,	%edi
	movl	$3,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L25") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L25
# LABEL ("L26") / 

L26:

# DROP / 

# JMP ("L24") / 

	jmp	L24
# LABEL ("L25") / 

L25:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L29") / 

L29:

# SEXP ("READ", 0) / 

	movl	$23326141,	%ebx
	pushl	%ebx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (105) / 

	.stabn 68,0,105,.L2-LcompileSM

.L2:

# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# SEXP ("ST", 1) / 

	movl	$5853,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$1697575,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("cons", 2) / 

	movl	$1697575,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# SLABEL ("L30") / 

L30:

# JMP ("L6") / 

	jmp	L6
# SLABEL ("L28") / 

L28:

# SLABEL ("L40") / 

L40:

# LABEL ("L24") / 

L24:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Write", 1) / 

	movl	$1653680651,	%edi
	movl	$3,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L38") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L38
# LABEL ("L39") / 

L39:

# DROP / 

# JMP ("L37") / 

	jmp	L37
# LABEL ("L38") / 

L38:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L42") / 

L42:

# LINE (106) / 

	.stabn 68,0,106,.L3-LcompileSM

.L3:

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("LcompileExpr", 1, false) / 

	pushl	%ebx
	call	LcompileExpr
	addl	$4,	%esp
	movl	%eax,	%ebx
# SEXP ("WRITE", 0) / 

	movl	$1667528511,	%ecx
	pushl	%ebx
	pushl	%ecx
	pushl	$3
	call	Bsexp
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$1697575,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_434343", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_434343
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L43") / 

L43:

# JMP ("L6") / 

	jmp	L6
# SLABEL ("L41") / 

L41:

# SLABEL ("L52") / 

L52:

# LABEL ("L37") / 

L37:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Seq", 2) / 

	movl	$369315,	%edi
	movl	$5,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L50") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L50
# LABEL ("L51") / 

L51:

# DROP / 

# JMP ("L9") / 

	jmp	L9
# LABEL ("L50") / 

L50:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L54") / 

L54:

# LINE (107) / 

	.stabn 68,0,107,.L4-LcompileSM

.L4:

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("LcompileSM", 1, false) / 

	pushl	%ebx
	call	LcompileSM
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LcompileSM", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LcompileSM
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_434343", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_434343
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L55") / 

L55:

# SLABEL ("L53") / 

L53:

# JMP ("L6") / 

	jmp	L6
# LABEL ("L9") / 

L9:

# FAIL ((103, 7), true) / 

	pushl	$15
	pushl	$207
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L6") / 

	jmp	L6
# SLABEL ("L8") / 

L8:

# LABEL ("L6") / 

L6:

# SLABEL ("L5") / 

L5:

# END / 

	movl	%ebx,	%eax
LLcompileSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLcompileSM_SIZE,	12

	.set	LSLcompileSM_SIZE,	3

	.size LcompileSM, .-LcompileSM

# LABEL ("LcompileExpr") / 

LcompileExpr:

# BEGIN ("LcompileExpr", 1, 3, [], ["expr"], [{ blab="L60"; elab="L61"; names=[]; subs=[{ blab="L63"; elab="L64"; names=[]; subs=[{ blab="L89"; elab="L90"; names=[("s", 2); ("l_expr", 1); ("r_expr", 0)]; subs=[{ blab="L91"; elab="L92"; names=[]; subs=[]; }]; }; { blab="L80"; elab="L81"; names=[("s", 0)]; subs=[{ blab="L82"; elab="L83"; names=[]; subs=[]; }]; }; { blab="L70"; elab="L71"; names=[("n", 0)]; subs=[{ blab="L72"; elab="L73"; names=[]; subs=[]; }]; }]; }]; }]) / 

	.type compileExpr, @function

	.stabs "compileExpr:F1",36,0,0,LcompileExpr

	.stabs "expr:p1",160,0,0,8

	.stabs "s:1",128,0,0,-12

	.stabs "l_expr:1",128,0,0,-8

	.stabs "r_expr:1",128,0,0,-4

	.stabn 192,0,0,L89-LcompileExpr

	.stabn 224,0,0,L90-LcompileExpr

	.stabs "s:1",128,0,0,-4

	.stabn 192,0,0,L80-LcompileExpr

	.stabn 224,0,0,L81-LcompileExpr

	.stabs "n:1",128,0,0,-4

	.stabn 192,0,0,L70-LcompileExpr

	.stabn 224,0,0,L71-LcompileExpr

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLcompileExpr_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLcompileExpr_SIZE,	%ecx
	rep movsl	
# SLABEL ("L60") / 

L60:

# SLABEL ("L63") / 

L63:

# LINE (92) / 

	.stabn 68,0,92,0

	.stabn 68,0,92,.L5-LcompileExpr

.L5:

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L70") / 

L70:

# DUP / 

	movl	%ecx,	%esi
# TAG ("Const", 1) / 

	movl	$981060009,	%edi
	movl	$3,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L68") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L68
# LABEL ("L69") / 

L69:

# DROP / 

# JMP ("L67") / 

	jmp	L67
# LABEL ("L68") / 

L68:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L72") / 

L72:

# LINE (93) / 

	.stabn 68,0,93,.L6-LcompileExpr

.L6:

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# SEXP ("CONST", 1) / 

	movl	$994907869,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# SEXP ("cons", 2) / 

	movl	$1697575,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# SLABEL ("L73") / 

L73:

# JMP ("L62") / 

	jmp	L62
# SLABEL ("L71") / 

L71:

# SLABEL ("L80") / 

L80:

# LABEL ("L67") / 

L67:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Var", 1) / 

	movl	$393381,	%edi
	movl	$3,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L78") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L78
# LABEL ("L79") / 

L79:

# DROP / 

# JMP ("L77") / 

	jmp	L77
# LABEL ("L78") / 

L78:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L82") / 

L82:

# LINE (94) / 

	.stabn 68,0,94,.L7-LcompileExpr

.L7:

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# SEXP ("LD", 1) / 

	movl	$4925,	%ecx
	pushl	%ecx
	pushl	%ebx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	movl	%eax,	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# SEXP ("cons", 2) / 

	movl	$1697575,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# SLABEL ("L83") / 

L83:

# JMP ("L62") / 

	jmp	L62
# SLABEL ("L81") / 

L81:

# SLABEL ("L89") / 

L89:

# LABEL ("L77") / 

L77:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("Binop", 3) / 

	movl	$944359329,	%edi
	movl	$7,	-16(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-16(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L87") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L87
# LABEL ("L88") / 

L88:

# DROP / 

# JMP ("L65") / 

	jmp	L65
# LABEL ("L87") / 

L87:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (2) / 

	movl	$5,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (2)) / 

	movl	%ecx,	-12(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (2) / 

	movl	$5,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L91") / 

L91:

# LINE (95) / 

	.stabn 68,0,95,.L8-LcompileExpr

.L8:

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# CALL ("LcompileExpr", 1, false) / 

	pushl	%ebx
	call	LcompileExpr
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LcompileExpr", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	call	LcompileExpr
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_434343", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_434343
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# SEXP ("BINOP", 1) / 

	movl	$958207189,	%esi
	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Bsexp
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$1697575,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_434343", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_434343
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L92") / 

L92:

# SLABEL ("L90") / 

L90:

# JMP ("L62") / 

	jmp	L62
# LABEL ("L65") / 

L65:

# FAIL ((92, 7), true) / 

	pushl	$15
	pushl	$185
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L62") / 

	jmp	L62
# SLABEL ("L64") / 

L64:

# LABEL ("L62") / 

L62:

# SLABEL ("L61") / 

L61:

# END / 

	movl	%ebx,	%eax
LLcompileExpr_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLcompileExpr_SIZE,	16

	.set	LSLcompileExpr_SIZE,	4

	.size LcompileExpr, .-LcompileExpr

# LABEL ("LevalSM") / 

LevalSM:

# BEGIN ("LevalSM", 2, 0, [], ["input"; "insns"], [{ blab="L102"; elab="L103"; names=[]; subs=[{ blab="L105"; elab="L106"; names=[]; subs=[]; }]; }]) / 

	.type evalSM, @function

	.stabs "evalSM:F1",36,0,0,LevalSM

	.stabs "input:p1",160,0,0,8

	.stabs "insns:p1",160,0,0,12

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLevalSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLevalSM_SIZE,	%ecx
	rep movsl	
# SLABEL ("L102") / 

L102:

# SLABEL ("L105") / 

L105:

# LINE (85) / 

	.stabn 68,0,85,0

	.stabn 68,0,85,.L9-LevalSM

.L9:

# CONST (0) / 

	movl	$1,	%ebx
# LINE (86) / 

	.stabn 68,0,86,.L10-LevalSM

.L10:

# CLOSURE ("LemptyState", []) / 

	pushl	%ebx
	pushl	$LemptyState
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ecx
	popl	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%esi
# CALL ("LcreateWorld", 1, false) / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	call	LcreateWorld
	addl	$4,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CALL (".array", 3, false) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALL ("Leval", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Leval
	addl	$8,	%esp
	movl	%eax,	%ebx
# CONST (2) / 

	movl	$5,	%ecx
# ELEM / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL ("LgetOutput", 1, true) / 

	pushl	%ebx
	call	LgetOutput
	addl	$4,	%esp
	movl	%eax,	%ebx
# SLABEL ("L106") / 

L106:

# LABEL ("L104") / 

L104:

# SLABEL ("L103") / 

L103:

# END / 

	movl	%ebx,	%eax
LLevalSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLevalSM_SIZE,	0

	.set	LSLevalSM_SIZE,	0

	.size LevalSM, .-LevalSM

# LABEL ("Leval") / 

Leval:

# BEGIN ("Leval", 2, 0, [], ["c"; "insns"], [{ blab="L116"; elab="L117"; names=[]; subs=[{ blab="L119"; elab="L120"; names=[]; subs=[]; }]; }]) / 

	.type eval, @function

	.stabs "eval:F1",36,0,0,Leval

	.stabs "c:p1",160,0,0,8

	.stabs "insns:p1",160,0,0,12

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLeval_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLeval_SIZE,	%ecx
	rep movsl	
# SLABEL ("L116") / 

L116:

# SLABEL ("L119") / 

L119:

# LINE (80) / 

	.stabn 68,0,80,0

	.stabn 68,0,80,.L11-Leval

.L11:

# LINE (81) / 

	.stabn 68,0,81,.L12-Leval

.L12:

# CLOSURE ("LperformInstruction_23", []) / 

	pushl	$LperformInstruction_23
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# LD (Arg (1)) / 

	movl	12(%ebp),	%esi
# CALL ("Lfoldl", 3, true) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	Lfoldl
	addl	$12,	%esp
	movl	%eax,	%ebx
# SLABEL ("L120") / 

L120:

# LABEL ("L118") / 

L118:

# SLABEL ("L117") / 

L117:

# END / 

	movl	%ebx,	%eax
LLeval_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLeval_SIZE,	0

	.set	LSLeval_SIZE,	0

	.size Leval, .-Leval

# LABEL ("LperformInstruction_23") / 

LperformInstruction_23:

# BEGIN ("LperformInstruction_23", 2, 8, [], ["c"; "ins"], [{ blab="L124"; elab="L125"; names=[]; subs=[{ blab="L127"; elab="L128"; names=[("stack", 2); ("state", 1); ("world", 0)]; subs=[{ blab="L287"; elab="L288"; names=[("n", 3)]; subs=[{ blab="L289"; elab="L290"; names=[]; subs=[{ blab="L291"; elab="L292"; names=[]; subs=[]; }]; }]; }; { blab="L259"; elab="L260"; names=[("x", 3)]; subs=[{ blab="L261"; elab="L262"; names=[]; subs=[{ blab="L263"; elab="L264"; names=[]; subs=[{ blab="L272"; elab="L273"; names=[("value", 5); ("newStack", 4)]; subs=[{ blab="L274"; elab="L275"; names=[]; subs=[]; }]; }]; }]; }]; }; { blab="L244"; elab="L245"; names=[("x", 3)]; subs=[{ blab="L246"; elab="L247"; names=[]; subs=[{ blab="L248"; elab="L249"; names=[]; subs=[]; }]; }]; }; { blab="L204"; elab="L205"; names=[("s", 3)]; subs=[{ blab="L206"; elab="L207"; names=[]; subs=[{ blab="L208"; elab="L209"; names=[]; subs=[{ blab="L217"; elab="L218"; names=[("right", 5); ("firstPop", 4)]; subs=[{ blab="L219"; elab="L220"; names=[]; subs=[{ blab="L221"; elab="L222"; names=[]; subs=[{ blab="L230"; elab="L231"; names=[("left", 7); ("secondPop", 6)]; subs=[{ blab="L232"; elab="L233"; names=[]; subs=[]; }]; }]; }]; }]; }]; }]; }]; }; { blab="L177"; elab="L178"; names=[]; subs=[{ blab="L179"; elab="L180"; names=[]; subs=[{ blab="L181"; elab="L182"; names=[]; subs=[{ blab="L190"; elab="L191"; names=[("value", 4); ("newStack", 3)]; subs=[{ blab="L192"; elab="L193"; names=[]; subs=[]; }]; }]; }]; }]; }; { blab="L150"; elab="L151"; names=[]; subs=[{ blab="L152"; elab="L153"; names=[]; subs=[{ blab="L154"; elab="L155"; names=[("valueWorldPair", 4); ("value", 3)]; subs=[]; }]; }]; }]; }]; }]) / 

	.type performInstruction_23, @function

	.stabs "performInstruction_23:F1",36,0,0,LperformInstruction_23

	.stabs "c:p1",160,0,0,8

	.stabs "ins:p1",160,0,0,12

	.stabs "stack:1",128,0,0,-12

	.stabs "state:1",128,0,0,-8

	.stabs "world:1",128,0,0,-4

	.stabn 192,0,0,L127-LperformInstruction_23

	.stabs "n:1",128,0,0,-16

	.stabn 192,0,0,L287-LperformInstruction_23

	.stabn 224,0,0,L288-LperformInstruction_23

	.stabs "x:1",128,0,0,-16

	.stabn 192,0,0,L259-LperformInstruction_23

	.stabs "value:1",128,0,0,-24

	.stabs "newStack:1",128,0,0,-20

	.stabn 192,0,0,L272-LperformInstruction_23

	.stabn 224,0,0,L273-LperformInstruction_23

	.stabn 224,0,0,L260-LperformInstruction_23

	.stabs "x:1",128,0,0,-16

	.stabn 192,0,0,L244-LperformInstruction_23

	.stabn 224,0,0,L245-LperformInstruction_23

	.stabs "s:1",128,0,0,-16

	.stabn 192,0,0,L204-LperformInstruction_23

	.stabs "right:1",128,0,0,-24

	.stabs "firstPop:1",128,0,0,-20

	.stabn 192,0,0,L217-LperformInstruction_23

	.stabs "left:1",128,0,0,-32

	.stabs "secondPop:1",128,0,0,-28

	.stabn 192,0,0,L230-LperformInstruction_23

	.stabn 224,0,0,L231-LperformInstruction_23

	.stabn 224,0,0,L218-LperformInstruction_23

	.stabn 224,0,0,L205-LperformInstruction_23

	.stabs "value:1",128,0,0,-20

	.stabs "newStack:1",128,0,0,-16

	.stabn 192,0,0,L190-LperformInstruction_23

	.stabn 224,0,0,L191-LperformInstruction_23

	.stabs "valueWorldPair:1",128,0,0,-20

	.stabs "value:1",128,0,0,-16

	.stabn 192,0,0,L154-LperformInstruction_23

	.stabn 224,0,0,L155-LperformInstruction_23

	.stabn 224,0,0,L128-LperformInstruction_23

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLperformInstruction_23_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLperformInstruction_23_SIZE,	%ecx
	rep movsl	
# SLABEL ("L124") / 

L124:

# SLABEL ("L127") / 

L127:

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# ELEM / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (43) / 

	.stabn 68,0,43,0

	.stabn 68,0,43,.L13-LperformInstruction_23

.L13:

# ST (Local (2)) / 

	movl	%ebx,	-12(%ebp)
# DROP / 

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# ELEM / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (44) / 

	.stabn 68,0,44,.L14-LperformInstruction_23

.L14:

# ST (Local (1)) / 

	movl	%ebx,	-8(%ebp)
# DROP / 

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (2) / 

	movl	$5,	%ecx
# ELEM / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (45) / 

	.stabn 68,0,45,.L15-LperformInstruction_23

.L15:

# ST (Local (0)) / 

	movl	%ebx,	-4(%ebp)
# DROP / 

# LINE (47) / 

	.stabn 68,0,47,.L16-LperformInstruction_23

.L16:

# LD (Arg (1)) / 

	movl	12(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L150") / 

L150:

# DUP / 

	movl	%ecx,	%esi
# TAG ("READ", 0) / 

	movl	$23326141,	%edi
	movl	$1,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L148") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L148
# LABEL ("L149") / 

L149:

# DROP / 

# JMP ("L147") / 

	jmp	L147
# LABEL ("L148") / 

L148:

# DROP / 

# DROP / 

# SLABEL ("L152") / 

L152:

# SLABEL ("L154") / 

L154:

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CALL ("LreadWorld", 1, false) / 

	pushl	%ebx
	call	LreadWorld
	addl	$4,	%esp
	movl	%eax,	%ebx
# LINE (49) / 

	.stabn 68,0,49,.L17-LperformInstruction_23

.L17:

# ST (Local (4)) / 

	movl	%ebx,	-20(%ebp)
# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# ELEM / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (50) / 

	.stabn 68,0,50,.L18-LperformInstruction_23

.L18:

# ST (Local (3)) / 

	movl	%ebx,	-16(%ebp)
# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# CONST (1) / 

	movl	$3,	%ecx
# ELEM / 

	pushl	%ecx
	pushl	%ebx
	call	Belem
	addl	$8,	%esp
	movl	%eax,	%ebx
# ST (Local (0)) / 

	movl	%ebx,	-4(%ebp)
# DROP / 

# LINE (51) / 

	.stabn 68,0,51,.L19-LperformInstruction_23

.L19:

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# CALL ("LpushStack_23", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LpushStack_23
	addl	$8,	%esp
	movl	%eax,	%ebx
# ST (Local (2)) / 

	movl	%ebx,	-12(%ebp)
# DROP / 

# SLABEL ("L155") / 

L155:

# SLABEL ("L153") / 

L153:

# JMP ("L144") / 

	jmp	L144
# SLABEL ("L151") / 

L151:

# SLABEL ("L177") / 

L177:

# LABEL ("L147") / 

L147:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("WRITE", 0) / 

	movl	$1667528511,	%edi
	movl	$1,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L175") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L175
# LABEL ("L176") / 

L176:

# DROP / 

# JMP ("L174") / 

	jmp	L174
# LABEL ("L175") / 

L175:

# DROP / 

# DROP / 

# SLABEL ("L179") / 

L179:

# SLABEL ("L181") / 

L181:

# LINE (54) / 

	.stabn 68,0,54,.L20-LperformInstruction_23

.L20:

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# CALL ("LpopStack_23", 1, false) / 

	pushl	%ebx
	call	LpopStack_23
	addl	$4,	%esp
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L190") / 

L190:

# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L186") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L186
# LABEL ("L187") / 

L187:

# DROP / 

# JMP ("L183") / 

	jmp	L183
# LABEL ("L186") / 

L186:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DUP / 

	movl	%esi,	%edi
# TAG ("cons", 2) / 

	movl	$1697575,	-36(%ebp)
	movl	$5,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L188") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L188
# LABEL ("L189") / 

L189:

# DROP / 

# JMP ("L187") / 

	jmp	L187
# LABEL ("L188") / 

L188:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

# DUP / 

	movl	%esi,	%edi
# CONST (1) / 

	movl	$3,	-36(%ebp)
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# BINOP ("==") / 

	xorl	%eax,	%eax
	movl	-36(%ebp),	%edx
	cmpl	%edx,	%edi
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%edi
# CJMP ("z", "L189") / 

	sarl	%edi
	cmpl	$0,	%edi
	jz	L189
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L192") / 

L192:

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LINE (55) / 

	.stabn 68,0,55,.L21-LperformInstruction_23

.L21:

# ST (Local (2)) / 

	movl	%ebx,	-12(%ebp)
# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("LwriteWorld", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LwriteWorld
	addl	$8,	%esp
	movl	%eax,	%ebx
# ST (Local (0)) / 

	movl	%ebx,	-4(%ebp)
# DROP / 

# SLABEL ("L193") / 

L193:

# SLABEL ("L191") / 

L191:

# JMP ("L144") / 

	jmp	L144
# LABEL ("L183") / 

L183:

# FAIL ((54, 13), false) / 

	pushl	$27
	pushl	$109
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L144") / 

	jmp	L144
# SLABEL ("L182") / 

L182:

# SLABEL ("L180") / 

L180:

# JMP ("L144") / 

# SLABEL ("L178") / 

L178:

# SLABEL ("L204") / 

L204:

# LABEL ("L174") / 

L174:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L202") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L202
# LABEL ("L203") / 

L203:

# DROP / 

# JMP ("L201") / 

	jmp	L201
# LABEL ("L202") / 

L202:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L206") / 

L206:

# SLABEL ("L208") / 

L208:

# LINE (59) / 

	.stabn 68,0,59,.L22-LperformInstruction_23

.L22:

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# CALL ("LpopStack_23", 1, false) / 

	pushl	%ebx
	call	LpopStack_23
	addl	$4,	%esp
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L217") / 

L217:

# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L213") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L213
# LABEL ("L214") / 

L214:

# DROP / 

# JMP ("L210") / 

	jmp	L210
# LABEL ("L213") / 

L213:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DUP / 

	movl	%esi,	%edi
# TAG ("cons", 2) / 

	movl	$1697575,	-36(%ebp)
	movl	$5,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L215") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L215
# LABEL ("L216") / 

L216:

# DROP / 

# JMP ("L214") / 

	jmp	L214
# LABEL ("L215") / 

L215:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

# DUP / 

	movl	%esi,	%edi
# CONST (1) / 

	movl	$3,	-36(%ebp)
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# BINOP ("==") / 

	xorl	%eax,	%eax
	movl	-36(%ebp),	%edx
	cmpl	%edx,	%edi
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%edi
# CJMP ("z", "L216") / 

	sarl	%edi
	cmpl	$0,	%edi
	jz	L216
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L219") / 

L219:

# SLABEL ("L221") / 

L221:

# LINE (61) / 

	.stabn 68,0,61,.L23-LperformInstruction_23

.L23:

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# CALL ("LpopStack_23", 1, false) / 

	pushl	%ebx
	call	LpopStack_23
	addl	$4,	%esp
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L230") / 

L230:

# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L226") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L226
# LABEL ("L227") / 

L227:

# DROP / 

# JMP ("L223") / 

	jmp	L223
# LABEL ("L226") / 

L226:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DUP / 

	movl	%esi,	%edi
# TAG ("cons", 2) / 

	movl	$1697575,	-36(%ebp)
	movl	$5,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L228") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L228
# LABEL ("L229") / 

L229:

# DROP / 

# JMP ("L227") / 

	jmp	L227
# LABEL ("L228") / 

L228:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

# DUP / 

	movl	%esi,	%edi
# CONST (1) / 

	movl	$3,	-36(%ebp)
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# BINOP ("==") / 

	xorl	%eax,	%eax
	movl	-36(%ebp),	%edx
	cmpl	%edx,	%edi
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%edi
# CJMP ("z", "L229") / 

	sarl	%edi
	cmpl	$0,	%edi
	jz	L229
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (7)) / 

	movl	%ecx,	-32(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (6)) / 

	movl	%ecx,	-28(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L232") / 

L232:

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Local (7)) / 

	movl	-32(%ebp),	%ecx
# LD (Local (5)) / 

	movl	-24(%ebp),	%esi
# CALL ("LperformBinop", 3, false) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	call	LperformBinop
	addl	$12,	%esp
	movl	%eax,	%ebx
# LD (Local (6)) / 

	movl	-28(%ebp),	%ecx
# CALL ("LpushStack_23", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LpushStack_23
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (62) / 

	.stabn 68,0,62,.L24-LperformInstruction_23

.L24:

# ST (Local (2)) / 

	movl	%ebx,	-12(%ebp)
# DROP / 

# SLABEL ("L233") / 

L233:

# SLABEL ("L231") / 

L231:

# JMP ("L144") / 

	jmp	L144
# LABEL ("L223") / 

L223:

# FAIL ((61, 17), false) / 

	pushl	$35
	pushl	$123
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L144") / 

	jmp	L144
# SLABEL ("L222") / 

L222:

# SLABEL ("L220") / 

L220:

# SLABEL ("L218") / 

L218:

# JMP ("L144") / 

# LABEL ("L210") / 

L210:

# FAIL ((59, 13), false) / 

	pushl	$27
	pushl	$119
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L144") / 

	jmp	L144
# SLABEL ("L209") / 

L209:

# SLABEL ("L207") / 

L207:

# JMP ("L144") / 

# SLABEL ("L205") / 

L205:

# SLABEL ("L244") / 

L244:

# LABEL ("L201") / 

L201:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("LD", 1) / 

	movl	$4925,	%edi
	movl	$3,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L242") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L242
# LABEL ("L243") / 

L243:

# DROP / 

# JMP ("L241") / 

	jmp	L241
# LABEL ("L242") / 

L242:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L246") / 

L246:

# SLABEL ("L248") / 

L248:

# LINE (68) / 

	.stabn 68,0,68,.L25-LperformInstruction_23

.L25:

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# CALLC (1, false) / 

	pushl	%ebx
	pushl	%ecx
	movl	%ebx,	%edx
	call	*(%ebx)
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# CALL ("LpushStack_23", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LpushStack_23
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (67) / 

	.stabn 68,0,67,.L26-LperformInstruction_23

.L26:

# ST (Local (2)) / 

	movl	%ebx,	-12(%ebp)
# DROP / 

# SLABEL ("L249") / 

L249:

# SLABEL ("L247") / 

L247:

# JMP ("L144") / 

	jmp	L144
# SLABEL ("L245") / 

L245:

# SLABEL ("L259") / 

L259:

# LABEL ("L241") / 

L241:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("ST", 1) / 

	movl	$5853,	%edi
	movl	$3,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L257") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L257
# LABEL ("L258") / 

L258:

# DROP / 

# JMP ("L256") / 

	jmp	L256
# LABEL ("L257") / 

L257:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L261") / 

L261:

# SLABEL ("L263") / 

L263:

# LINE (71) / 

	.stabn 68,0,71,.L27-LperformInstruction_23

.L27:

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# CALL ("LpopStack_23", 1, false) / 

	pushl	%ebx
	call	LpopStack_23
	addl	$4,	%esp
	movl	%eax,	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L272") / 

L272:

# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L268") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L268
# LABEL ("L269") / 

L269:

# DROP / 

# JMP ("L265") / 

	jmp	L265
# LABEL ("L268") / 

L268:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DUP / 

	movl	%esi,	%edi
# TAG ("cons", 2) / 

	movl	$1697575,	-36(%ebp)
	movl	$5,	-40(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-40(%ebp)
	pushl	-36(%ebp)
	pushl	%edi
	call	Btag
	addl	$12,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CJMP ("nz", "L270") / 

	sarl	%edi
	cmpl	$0,	%edi
	jnz	L270
# LABEL ("L271") / 

L271:

# DROP / 

# JMP ("L269") / 

	jmp	L269
# LABEL ("L270") / 

L270:

# DUP / 

	movl	%esi,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# DROP / 

# DUP / 

	movl	%esi,	%edi
# CONST (1) / 

	movl	$3,	-36(%ebp)
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%esi
	pushl	-36(%ebp)
	pushl	%edi
	call	Belem
	addl	$8,	%esp
	popl	%esi
	popl	%ecx
	popl	%ebx
	movl	%eax,	%edi
# CONST (0) / 

	movl	$1,	-36(%ebp)
# BINOP ("==") / 

	xorl	%eax,	%eax
	movl	-36(%ebp),	%edx
	cmpl	%edx,	%edi
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%edi
# CJMP ("z", "L271") / 

	sarl	%edi
	cmpl	$0,	%edi
	jz	L271
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (5)) / 

	movl	%ecx,	-24(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (4)) / 

	movl	%ecx,	-20(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L274") / 

L274:

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (3)) / 

	movl	-16(%ebp),	%ecx
# LD (Local (5)) / 

	movl	-24(%ebp),	%esi
# CALL (".array", 2, false) / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	pushl	$5
	call	Barray
	addl	$12,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_6045", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_6045
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (72) / 

	.stabn 68,0,72,.L28-LperformInstruction_23

.L28:

# ST (Local (1)) / 

	movl	%ebx,	-8(%ebp)
# DROP / 

# LD (Local (4)) / 

	movl	-20(%ebp),	%ebx
# ST (Local (2)) / 

	movl	%ebx,	-12(%ebp)
# DROP / 

# SLABEL ("L275") / 

L275:

# SLABEL ("L273") / 

L273:

# JMP ("L144") / 

	jmp	L144
# LABEL ("L265") / 

L265:

# FAIL ((71, 11), false) / 

	pushl	$23
	pushl	$143
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L144") / 

	jmp	L144
# SLABEL ("L264") / 

L264:

# SLABEL ("L262") / 

L262:

# JMP ("L144") / 

# SLABEL ("L260") / 

L260:

# SLABEL ("L287") / 

L287:

# LABEL ("L256") / 

L256:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("CONST", 1) / 

	movl	$994907869,	%edi
	movl	$3,	-36(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-36(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L285") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L285
# LABEL ("L286") / 

L286:

# DROP / 

# JMP ("L145") / 

	jmp	L145
# LABEL ("L285") / 

L285:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (3)) / 

	movl	%ecx,	-16(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L289") / 

L289:

# SLABEL ("L291") / 

L291:

# LINE (76) / 

	.stabn 68,0,76,.L29-LperformInstruction_23

.L29:

# LD (Local (3)) / 

	movl	-16(%ebp),	%ebx
# LD (Local (2)) / 

	movl	-12(%ebp),	%ecx
# CALL ("LpushStack_23", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	LpushStack_23
	addl	$8,	%esp
	movl	%eax,	%ebx
# LINE (75) / 

	.stabn 68,0,75,.L30-LperformInstruction_23

.L30:

# ST (Local (2)) / 

	movl	%ebx,	-12(%ebp)
# DROP / 

# SLABEL ("L292") / 

L292:

# SLABEL ("L290") / 

L290:

# SLABEL ("L288") / 

L288:

# JMP ("L144") / 

	jmp	L144
# LABEL ("L145") / 

L145:

# FAIL ((47, 9), false) / 

	pushl	$19
	pushl	$95
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L144") / 

	jmp	L144
# LABEL ("L144") / 

L144:

# LINE (79) / 

	.stabn 68,0,79,.L31-LperformInstruction_23

.L31:

# LD (Local (2)) / 

	movl	-12(%ebp),	%ebx
# LD (Local (1)) / 

	movl	-8(%ebp),	%ecx
# LD (Local (0)) / 

	movl	-4(%ebp),	%esi
# CALL (".array", 3, true) / 

	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Barray
	addl	$16,	%esp
	movl	%eax,	%ebx
# SLABEL ("L128") / 

L128:

# LABEL ("L126") / 

L126:

# SLABEL ("L125") / 

L125:

# END / 

	movl	%ebx,	%eax
LLperformInstruction_23_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLperformInstruction_23_SIZE,	40

	.set	LSLperformInstruction_23_SIZE,	10

	.size LperformInstruction_23, .-LperformInstruction_23

# LABEL ("LpushStack_23") / 

LpushStack_23:

# BEGIN ("LpushStack_23", 2, 0, [], ["v"; "stack"], [{ blab="L300"; elab="L301"; names=[]; subs=[{ blab="L303"; elab="L304"; names=[]; subs=[]; }]; }]) / 

	.type pushStack_23, @function

	.stabs "pushStack_23:F1",36,0,0,LpushStack_23

	.stabs "v:p1",160,0,0,8

	.stabs "stack:p1",160,0,0,12

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLpushStack_23_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpushStack_23_SIZE,	%ecx
	rep movsl	
# SLABEL ("L300") / 

L300:

# SLABEL ("L303") / 

L303:

# LINE (39) / 

	.stabn 68,0,39,0

	.stabn 68,0,39,.L32-LpushStack_23

.L32:

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# SEXP ("cons", 2) / 

	movl	$1697575,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# LD (Arg (1)) / 

	movl	12(%ebp),	%ecx
# CALL ("Li__Infix_434343", 2, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ecx,	12(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Li__Infix_434343
# SLABEL ("L304") / 

L304:

# LABEL ("L302") / 

L302:

# SLABEL ("L301") / 

L301:

# END / 

	movl	%ebx,	%eax
LLpushStack_23_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLpushStack_23_SIZE,	0

	.set	LSLpushStack_23_SIZE,	0

	.size LpushStack_23, .-LpushStack_23

# LABEL ("LpopStack_23") / 

LpopStack_23:

# BEGIN ("LpopStack_23", 1, 2, [], ["stack"], [{ blab="L309"; elab="L310"; names=[]; subs=[{ blab="L312"; elab="L313"; names=[]; subs=[{ blab="L335"; elab="L336"; names=[("v", 1); ("tl", 0)]; subs=[{ blab="L337"; elab="L338"; names=[]; subs=[]; }]; }; { blab="L325"; elab="L326"; names=[("v", 0)]; subs=[{ blab="L327"; elab="L328"; names=[]; subs=[]; }]; }; { blab="L317"; elab="L318"; names=[]; subs=[{ blab="L319"; elab="L320"; names=[]; subs=[]; }]; }]; }]; }]) / 

	.type popStack_23, @function

	.stabs "popStack_23:F1",36,0,0,LpopStack_23

	.stabs "stack:p1",160,0,0,8

	.stabs "v:1",128,0,0,-8

	.stabs "tl:1",128,0,0,-4

	.stabn 192,0,0,L335-LpopStack_23

	.stabn 224,0,0,L336-LpopStack_23

	.stabs "v:1",128,0,0,-4

	.stabn 192,0,0,L325-LpopStack_23

	.stabn 224,0,0,L326-LpopStack_23

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLpopStack_23_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLpopStack_23_SIZE,	%ecx
	rep movsl	
# SLABEL ("L309") / 

L309:

# SLABEL ("L312") / 

L312:

# LINE (31) / 

	.stabn 68,0,31,0

	.stabn 68,0,31,.L33-LpopStack_23

.L33:

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L317") / 

L317:

# CONST (0) / 

	movl	$1,	%esi
# BINOP ("==") / 

	xorl	%eax,	%eax
	cmpl	%esi,	%ecx
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%ecx
# CJMP ("z", "L316") / 

	sarl	%ecx
	cmpl	$0,	%ecx
	jz	L316
# DROP / 

# SLABEL ("L319") / 

L319:

# LINE (32) / 

	.stabn 68,0,32,.L34-LpopStack_23

.L34:

# STRING ("Stack is empty\\n") / 

	movl	$string_1,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lfailure", 1, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lfailure
# SLABEL ("L320") / 

L320:

# JMP ("L311") / 

	jmp	L311
# SLABEL ("L318") / 

L318:

# SLABEL ("L325") / 

L325:

# LABEL ("L316") / 

L316:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L323") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L323
# LABEL ("L324") / 

L324:

# DROP / 

# JMP ("L322") / 

	jmp	L322
# LABEL ("L323") / 

L323:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CONST (0) / 

	movl	$1,	%edi
# BINOP ("==") / 

	xorl	%eax,	%eax
	cmpl	%edi,	%esi
	sete	%al
	sall	%eax
	orl	$0x0001,	%eax
	movl	%eax,	%esi
# CJMP ("z", "L324") / 

	sarl	%esi
	cmpl	$0,	%esi
	jz	L324
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L327") / 

L327:

# LINE (33) / 

	.stabn 68,0,33,.L35-LpopStack_23

.L35:

# LD (Local (0)) / 

	movl	-4(%ebp),	%ebx
# CONST (0) / 

	movl	$1,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$1697575,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("cons", 2) / 

	movl	$1697575,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# SLABEL ("L328") / 

L328:

# JMP ("L311") / 

	jmp	L311
# SLABEL ("L326") / 

L326:

# SLABEL ("L335") / 

L335:

# LABEL ("L322") / 

L322:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("cons", 2) / 

	movl	$1697575,	%edi
	movl	$5,	-12(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-12(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L333") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L333
# LABEL ("L334") / 

L334:

# DROP / 

# JMP ("L314") / 

	jmp	L314
# LABEL ("L333") / 

L333:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DUP / 

	movl	%ecx,	%esi
# CONST (1) / 

	movl	$3,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (1)) / 

	movl	%ecx,	-8(%ebp)
# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (1) / 

	movl	$3,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L337") / 

L337:

# LINE (34) / 

	.stabn 68,0,34,.L36-LpopStack_23

.L36:

# LD (Local (1)) / 

	movl	-8(%ebp),	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CONST (0) / 

	movl	$1,	%esi
# SEXP ("cons", 2) / 

	movl	$1697575,	%edi
	pushl	%ebx
	pushl	%edi
	pushl	%esi
	pushl	%ecx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# SEXP ("cons", 2) / 

	movl	$1697575,	%esi
	pushl	%esi
	pushl	%ecx
	pushl	%ebx
	pushl	$7
	call	Bsexp
	addl	$16,	%esp
	movl	%eax,	%ebx
# SLABEL ("L338") / 

L338:

# SLABEL ("L336") / 

L336:

# JMP ("L311") / 

	jmp	L311
# LABEL ("L314") / 

L314:

# FAIL ((31, 9), true) / 

	pushl	$19
	pushl	$63
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L311") / 

	jmp	L311
# SLABEL ("L313") / 

L313:

# LABEL ("L311") / 

L311:

# SLABEL ("L310") / 

L310:

# END / 

	movl	%ebx,	%eax
LLpopStack_23_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLpopStack_23_SIZE,	12

	.set	LSLpopStack_23_SIZE,	3

	.size LpopStack_23, .-LpopStack_23

# LABEL ("LshowSM") / 

LshowSM:

# BEGIN ("LshowSM", 1, 0, [], ["prg"], [{ blab="L343"; elab="L344"; names=[]; subs=[{ blab="L346"; elab="L347"; names=[]; subs=[]; }]; }]) / 

	.type showSM, @function

	.stabs "showSM:F1",36,0,0,LshowSM

	.stabs "prg:p1",160,0,0,8

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLshowSM_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLshowSM_SIZE,	%ecx
	rep movsl	
# SLABEL ("L343") / 

L343:

# SLABEL ("L346") / 

L346:

# LINE (23) / 

	.stabn 68,0,23,0

	.stabn 68,0,23,.L37-LshowSM

.L37:

# LINE (24) / 

	.stabn 68,0,24,.L38-LshowSM

.L38:

# CLOSURE ("Llambda_0_64", []) / 

	pushl	$Llambda_0_64
	pushl	$1
	call	Bclosure
	addl	$8,	%esp
	movl	%eax,	%ebx
# LD (Arg (0)) / 

	movl	8(%ebp),	%ecx
# CALL ("Lmap", 2, false) / 

	pushl	%ecx
	pushl	%ebx
	call	Lmap
	addl	$8,	%esp
	movl	%eax,	%ebx
# CALL ("Lstringcat", 1, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lstringcat
# SLABEL ("L347") / 

L347:

# LABEL ("L345") / 

L345:

# SLABEL ("L344") / 

L344:

# END / 

	movl	%ebx,	%eax
LLshowSM_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLshowSM_SIZE,	0

	.set	LSLshowSM_SIZE,	0

	.size LshowSM, .-LshowSM

# LABEL ("Llambda_0_64") / 

Llambda_0_64:

# BEGIN ("Llambda_0_64", 1, 0, [], ["i"], [{ blab="L351"; elab="L352"; names=[]; subs=[{ blab="L354"; elab="L355"; names=[]; subs=[]; }]; }]) / 

	.type lambda_0_64, @function

	.stabs "lambda_0_64:F1",36,0,0,Llambda_0_64

	.stabs "i:p1",160,0,0,8

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLlambda_0_64_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLlambda_0_64_SIZE,	%ecx
	rep movsl	
# SLABEL ("L351") / 

L351:

# SLABEL ("L354") / 

L354:

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# CALL ("LshowSMInsn", 1, false) / 

	pushl	%ebx
	call	LshowSMInsn
	addl	$4,	%esp
	movl	%eax,	%ebx
# STRING ("\\n") / 

	movl	$string_2,	%ecx
	pushl	%ebx
	pushl	%ecx
	call	Bstring
	addl	$4,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# CALL ("Li__Infix_4343", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Li__Infix_4343
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L355") / 

L355:

# LABEL ("L353") / 

L353:

# SLABEL ("L352") / 

L352:

# END / 

	movl	%ebx,	%eax
LLlambda_0_64_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLlambda_0_64_SIZE,	0

	.set	LSLlambda_0_64_SIZE,	0

	.size Llambda_0_64, .-Llambda_0_64

# LABEL ("LshowSMInsn") / 

LshowSMInsn:

# BEGIN ("LshowSMInsn", 1, 1, [], ["i"], [{ blab="L359"; elab="L360"; names=[]; subs=[{ blab="L362"; elab="L363"; names=[]; subs=[{ blab="L411"; elab="L412"; names=[("n", 0)]; subs=[{ blab="L413"; elab="L414"; names=[]; subs=[]; }]; }; { blab="L403"; elab="L404"; names=[("x", 0)]; subs=[{ blab="L405"; elab="L406"; names=[]; subs=[]; }]; }; { blab="L394"; elab="L395"; names=[("x", 0)]; subs=[{ blab="L396"; elab="L397"; names=[]; subs=[]; }]; }; { blab="L385"; elab="L386"; names=[("s", 0)]; subs=[{ blab="L387"; elab="L388"; names=[]; subs=[]; }]; }; { blab="L377"; elab="L378"; names=[]; subs=[{ blab="L379"; elab="L380"; names=[]; subs=[]; }]; }; { blab="L369"; elab="L370"; names=[]; subs=[{ blab="L371"; elab="L372"; names=[]; subs=[]; }]; }]; }]; }]) / 

	.type showSMInsn, @function

	.stabs "showSMInsn:F1",36,0,0,LshowSMInsn

	.stabs "i:p1",160,0,0,8

	.stabs "n:1",128,0,0,-4

	.stabn 192,0,0,L411-LshowSMInsn

	.stabn 224,0,0,L412-LshowSMInsn

	.stabs "x:1",128,0,0,-4

	.stabn 192,0,0,L403-LshowSMInsn

	.stabn 224,0,0,L404-LshowSMInsn

	.stabs "x:1",128,0,0,-4

	.stabn 192,0,0,L394-LshowSMInsn

	.stabn 224,0,0,L395-LshowSMInsn

	.stabs "s:1",128,0,0,-4

	.stabn 192,0,0,L385-LshowSMInsn

	.stabn 224,0,0,L386-LshowSMInsn

	.cfi_startproc

	pushl	%ebp
	.cfi_def_cfa_offset	8

	.cfi_offset 5, -8

	movl	%esp,	%ebp
	.cfi_def_cfa_register	5

	subl	$LLshowSMInsn_SIZE,	%esp
	movl	%esp,	%edi
	movl	$filler,	%esi
	movl	$LSLshowSMInsn_SIZE,	%ecx
	rep movsl	
# SLABEL ("L359") / 

L359:

# SLABEL ("L362") / 

L362:

# LINE (13) / 

	.stabn 68,0,13,0

	.stabn 68,0,13,.L39-LshowSMInsn

.L39:

# LD (Arg (0)) / 

	movl	8(%ebp),	%ebx
# DUP / 

	movl	%ebx,	%ecx
# SLABEL ("L369") / 

L369:

# DUP / 

	movl	%ecx,	%esi
# TAG ("READ", 0) / 

	movl	$23326141,	%edi
	movl	$1,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L367") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L367
# LABEL ("L368") / 

L368:

# DROP / 

# JMP ("L366") / 

	jmp	L366
# LABEL ("L367") / 

L367:

# DROP / 

# DROP / 

# SLABEL ("L371") / 

L371:

# LINE (14) / 

	.stabn 68,0,14,.L40-LshowSMInsn

.L40:

# STRING ("READ") / 

	movl	$string_3,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lsprintf", 1, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lsprintf
# SLABEL ("L372") / 

L372:

# JMP ("L361") / 

	jmp	L361
# SLABEL ("L370") / 

L370:

# SLABEL ("L377") / 

L377:

# LABEL ("L366") / 

L366:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("WRITE", 0) / 

	movl	$1667528511,	%edi
	movl	$1,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L375") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L375
# LABEL ("L376") / 

L376:

# DROP / 

# JMP ("L374") / 

	jmp	L374
# LABEL ("L375") / 

L375:

# DROP / 

# DROP / 

# SLABEL ("L379") / 

L379:

# LINE (15) / 

	.stabn 68,0,15,.L41-LshowSMInsn

.L41:

# STRING ("WRITE") / 

	movl	$string_4,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# CALL ("Lsprintf", 1, true) / 

	movl	%ebx,	8(%ebp)
	movl	%ebp,	%esp
	popl	%ebp
	jmp	Lsprintf
# SLABEL ("L380") / 

L380:

# JMP ("L361") / 

	jmp	L361
# SLABEL ("L378") / 

L378:

# SLABEL ("L385") / 

L385:

# LABEL ("L374") / 

L374:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("BINOP", 1) / 

	movl	$958207189,	%edi
	movl	$3,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L383") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L383
# LABEL ("L384") / 

L384:

# DROP / 

# JMP ("L382") / 

	jmp	L382
# LABEL ("L383") / 

L383:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L387") / 

L387:

# LINE (16) / 

	.stabn 68,0,16,.L42-LshowSMInsn

.L42:

# STRING ("BINOP %s") / 

	movl	$string_5,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L388") / 

L388:

# JMP ("L361") / 

	jmp	L361
# SLABEL ("L386") / 

L386:

# SLABEL ("L394") / 

L394:

# LABEL ("L382") / 

L382:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("LD", 1) / 

	movl	$4925,	%edi
	movl	$3,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L392") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L392
# LABEL ("L393") / 

L393:

# DROP / 

# JMP ("L391") / 

	jmp	L391
# LABEL ("L392") / 

L392:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L396") / 

L396:

# LINE (17) / 

	.stabn 68,0,17,.L43-LshowSMInsn

.L43:

# STRING ("LD %s") / 

	movl	$string_6,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L397") / 

L397:

# JMP ("L361") / 

	jmp	L361
# SLABEL ("L395") / 

L395:

# SLABEL ("L403") / 

L403:

# LABEL ("L391") / 

L391:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("ST", 1) / 

	movl	$5853,	%edi
	movl	$3,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L401") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L401
# LABEL ("L402") / 

L402:

# DROP / 

# JMP ("L400") / 

	jmp	L400
# LABEL ("L401") / 

L401:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L405") / 

L405:

# LINE (18) / 

	.stabn 68,0,18,.L44-LshowSMInsn

.L44:

# STRING ("ST %s") / 

	movl	$string_7,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L406") / 

L406:

# JMP ("L361") / 

	jmp	L361
# SLABEL ("L404") / 

L404:

# SLABEL ("L411") / 

L411:

# LABEL ("L400") / 

L400:

# DUP / 

	movl	%ebx,	%ecx
# DUP / 

	movl	%ecx,	%esi
# TAG ("CONST", 1) / 

	movl	$994907869,	%edi
	movl	$3,	-8(%ebp)
	pushl	%ebx
	pushl	%ecx
	pushl	-8(%ebp)
	pushl	%edi
	pushl	%esi
	call	Btag
	addl	$12,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# CJMP ("nz", "L409") / 

	sarl	%esi
	cmpl	$0,	%esi
	jnz	L409
# LABEL ("L410") / 

L410:

# DROP / 

# JMP ("L364") / 

	jmp	L364
# LABEL ("L409") / 

L409:

# DUP / 

	movl	%ecx,	%esi
# CONST (0) / 

	movl	$1,	%edi
# ELEM / 

	pushl	%ebx
	pushl	%ecx
	pushl	%edi
	pushl	%esi
	call	Belem
	addl	$8,	%esp
	popl	%ecx
	popl	%ebx
	movl	%eax,	%esi
# DROP / 

# DROP / 

# DUP / 

	movl	%ebx,	%ecx
# CONST (0) / 

	movl	$1,	%esi
# ELEM / 

	pushl	%ebx
	pushl	%esi
	pushl	%ecx
	call	Belem
	addl	$8,	%esp
	popl	%ebx
	movl	%eax,	%ecx
# ST (Local (0)) / 

	movl	%ecx,	-4(%ebp)
# DROP / 

# DROP / 

# SLABEL ("L413") / 

L413:

# LINE (19) / 

	.stabn 68,0,19,.L45-LshowSMInsn

.L45:

# STRING ("CONST %d") / 

	movl	$string_8,	%ebx
	pushl	%ebx
	call	Bstring
	addl	$4,	%esp
	movl	%eax,	%ebx
# LD (Local (0)) / 

	movl	-4(%ebp),	%ecx
# CALL ("Lsprintf", 2, true) / 

	pushl	%ecx
	pushl	%ebx
	call	Lsprintf
	addl	$8,	%esp
	movl	%eax,	%ebx
# SLABEL ("L414") / 

L414:

# SLABEL ("L412") / 

L412:

# JMP ("L361") / 

	jmp	L361
# LABEL ("L364") / 

L364:

# FAIL ((13, 7), true) / 

	pushl	$15
	pushl	$27
	pushl	$string_0
	pushl	%ebx
	call	Bmatch_failure
	addl	$16,	%esp
# JMP ("L361") / 

	jmp	L361
# SLABEL ("L363") / 

L363:

# LABEL ("L361") / 

L361:

# SLABEL ("L360") / 

L360:

# END / 

	movl	%ebx,	%eax
LLshowSMInsn_epilogue:

	movl	%ebp,	%esp
	popl	%ebp
	.cfi_restore	5

	.cfi_def_cfa	4, 4

	ret
	.cfi_endproc

	.set	LLshowSMInsn_SIZE,	8

	.set	LSLshowSMInsn_SIZE,	2

	.size LshowSMInsn, .-LshowSMInsn

