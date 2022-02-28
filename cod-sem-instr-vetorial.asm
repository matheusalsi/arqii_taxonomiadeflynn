	.file	"progvec.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC3:
	.ascii "%d \0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB23:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$112, %esp
	call	___main
	movl	$0, 108(%esp)
	jmp	L2
L3:
	fildl	108(%esp)
	movl	108(%esp), %eax
	fstps	72(%esp,%eax,4)
	fildl	108(%esp)
	fldl	LC0
	fmulp	%st, %st(1)
	movl	108(%esp), %eax
	flds	72(%esp,%eax,4)
	fmulp	%st, %st(1)
	fstps	28(%esp)
	flds	28(%esp)
	movl	108(%esp), %eax
	fstps	56(%esp,%eax,4)
	fildl	108(%esp)
	fldl	LC1
	fmulp	%st, %st(1)
	movl	108(%esp), %eax
	flds	56(%esp,%eax,4)
	fmulp	%st, %st(1)
	fstps	28(%esp)
	flds	28(%esp)
	movl	108(%esp), %eax
	fstps	40(%esp,%eax,4)
	fildl	108(%esp)
	fldl	LC2
	fmulp	%st, %st(1)
	movl	108(%esp), %eax
	flds	40(%esp,%eax,4)
	fmulp	%st, %st(1)
	fstps	28(%esp)
	flds	28(%esp)
	movl	108(%esp), %eax
	fstps	72(%esp,%eax,4)
	addl	$1, 108(%esp)
L2:
	cmpl	$3, 108(%esp)
	jle	L3
	movl	$0, 104(%esp)
	jmp	L4
L5:
	movl	104(%esp), %eax
	flds	40(%esp,%eax,4)
	fstpl	4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	addl	$1, 104(%esp)
L4:
	cmpl	$3, 104(%esp)
	jle	L5
	movl	$10, (%esp)
	call	_putchar
	movl	$0, 100(%esp)
	jmp	L6
L7:
	movl	100(%esp), %eax
	flds	56(%esp,%eax,4)
	movl	100(%esp), %eax
	flds	72(%esp,%eax,4)
	faddp	%st, %st(1)
	movl	100(%esp), %eax
	fstps	40(%esp,%eax,4)
	addl	$1, 100(%esp)
L6:
	cmpl	$3, 100(%esp)
	jle	L7
	movl	$0, 96(%esp)
	jmp	L8
L9:
	movl	96(%esp), %eax
	flds	72(%esp,%eax,4)
	fstpl	4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	addl	$1, 96(%esp)
L8:
	cmpl	$3, 96(%esp)
	jle	L9
	movl	$10, (%esp)
	call	_putchar
	movl	$0, 92(%esp)
	jmp	L10
L11:
	movl	92(%esp), %eax
	flds	56(%esp,%eax,4)
	fstpl	4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	addl	$1, 92(%esp)
L10:
	cmpl	$3, 92(%esp)
	jle	L11
	movl	$10, (%esp)
	call	_putchar
	movl	$0, 88(%esp)
	jmp	L12
L13:
	movl	88(%esp), %eax
	flds	40(%esp,%eax,4)
	fstpl	4(%esp)
	movl	$LC3, (%esp)
	call	_printf
	addl	$1, 88(%esp)
L12:
	cmpl	$3, 88(%esp)
	jle	L13
	movl	$10, (%esp)
	call	_putchar
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE23:
	.section .rdata,"dr"
	.align 8
LC0:
	.long	1374389535
	.long	1070931640
	.align 8
LC1:
	.long	-1030792151
	.long	1071393013
	.align 8
LC2:
	.long	-1030792151
	.long	1070344437
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
