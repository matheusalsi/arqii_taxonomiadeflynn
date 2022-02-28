	.file	"progvec.c"
	.text
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC3:
	.ascii "%d \0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB33:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%edi
	pushl	%esi
	pushl	%ebx
	andl	$-16, %esp
	subl	$64, %esp
	.cfi_offset 7, -12
	.cfi_offset 6, -16
	.cfi_offset 3, -20
	call	___main
	vmovaps	LC0, %xmm0
	vmovaps	LC1, %xmm1
	vmovaps	LC2, %xmm2
	leal	48(%esp), %ebx
	vmovaps	%xmm0, 32(%esp)
	vmovaps	%xmm1, 48(%esp)
	vmovaps	%xmm2, 16(%esp)
	leal	64(%esp), %esi
	movl	%ebx, %edi
L2:
	vxorpd	%xmm3, %xmm3, %xmm3
	vcvtss2sd	(%edi), %xmm3, %xmm4
	movl	$LC3, (%esp)
	vmovsd	%xmm4, 4(%esp)
	addl	$4, %edi
	call	_printf
	cmpl	%esi, %edi
	jne	L2
	movl	$10, (%esp)
	leal	16(%esp), %edi
	call	_putchar
	vmovaps	LC4, %xmm5
	vmovaps	%xmm5, 48(%esp)
L3:
	vxorpd	%xmm6, %xmm6, %xmm6
	vcvtss2sd	(%edi), %xmm6, %xmm7
	movl	$LC3, (%esp)
	vmovsd	%xmm7, 4(%esp)
	addl	$4, %edi
	call	_printf
	leal	32(%esp), %eax
	cmpl	%eax, %edi
	jne	L3
	movl	$10, (%esp)
	call	_putchar
L4:
	vxorpd	%xmm0, %xmm0, %xmm0
	vcvtss2sd	(%edi), %xmm0, %xmm1
	movl	$LC3, (%esp)
	vmovsd	%xmm1, 4(%esp)
	addl	$4, %edi
	call	_printf
	leal	48(%esp), %edx
	cmpl	%edx, %edi
	jne	L4
	movl	$10, (%esp)
	call	_putchar
L5:
	vxorpd	%xmm2, %xmm2, %xmm2
	vcvtss2sd	(%ebx), %xmm2, %xmm3
	movl	$LC3, (%esp)
	vmovsd	%xmm3, 4(%esp)
	addl	$4, %ebx
	call	_printf
	cmpl	%ebx, %esi
	jne	L5
	movl	$10, (%esp)
	call	_putchar
	leal	-12(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%edi
	.cfi_restore 7
	xorl	%eax, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE33:
	.section .rdata,"dr"
	.align 16
LC0:
	.long	0
	.long	1051260355
	.long	1068037571
	.long	1077810299
	.align 16
LC1:
	.long	0
	.long	1041542991
	.long	1066708815
	.long	1081796566
	.align 16
LC2:
	.long	0
	.long	1023596470
	.long	1057150902
	.long	1076205827
	.align 16
LC4:
	.long	0
	.long	1052332218
	.long	1072325022
	.long	1085396671
	.ident	"GCC: (MinGW.org GCC Build-2) 9.2.0"
	.def	_printf;	.scl	2;	.type	32;	.endef
	.def	_putchar;	.scl	2;	.type	32;	.endef
