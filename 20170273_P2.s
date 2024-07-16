	.file	"20170273_P2.c"
	.text
	.section	.rodata
.LC0:
	.string	"El arreglo es: %i"
.LC1:
	.string	", %i"
.LC2:
	.string	", %i\n"
.LC3:
	.string	"%i - Deficiente\n"
.LC4:
	.string	"%i - Perfecto\n"
.LC5:
	.string	"%i - Abundante\n"
	.text
	.globl	main
	.type	main, @function
main:
.LFB6:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$96, %rsp
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movl	$0, -92(%rbp)
	jmp	.L2
.L3:
	movl	-92(%rbp), %eax
	cltq
	movl	$0, -80(%rbp,%rax,4)
	addl	$1, -92(%rbp)
.L2:
	cmpl	$14, -92(%rbp)
	jle	.L3
	movl	$0, %edi
	call	time@PLT
	movl	%eax, %edi
	call	srand@PLT
	movl	$0, -92(%rbp)
	jmp	.L4
.L8:
	call	rand@PLT
	movslq	%eax, %rdx
	imulq	$-1600085855, %rdx, %rdx
	shrq	$32, %rdx
	addl	%eax, %edx
	movl	%edx, %ecx
	sarl	$5, %ecx
	cltd
	subl	%edx, %ecx
	movl	%ecx, %edx
	imull	$51, %edx, %edx
	subl	%edx, %eax
	movl	%eax, %edx
	movl	-92(%rbp), %eax
	cltq
	movl	%edx, -80(%rbp,%rax,4)
	cmpl	$0, -92(%rbp)
	jne	.L5
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L6
.L5:
	cmpl	$14, -92(%rbp)
	je	.L7
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC1(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L6
.L7:
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC2(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L6:
	addl	$1, -92(%rbp)
.L4:
	cmpl	$14, -92(%rbp)
	jle	.L8
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, -92(%rbp)
	jmp	.L9
.L16:
	movl	$0, -88(%rbp)
	movl	$1, -84(%rbp)
	jmp	.L10
.L12:
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cltd
	idivl	-84(%rbp)
	movl	%edx, %eax
	testl	%eax, %eax
	jne	.L11
	movl	-84(%rbp), %eax
	addl	%eax, -88(%rbp)
.L11:
	addl	$1, -84(%rbp)
.L10:
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cmpl	%eax, -84(%rbp)
	jl	.L12
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cmpl	%eax, -88(%rbp)
	jge	.L13
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC3(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L14
.L13:
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cmpl	%eax, -88(%rbp)
	jne	.L15
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC4(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	jmp	.L14
.L15:
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	cmpl	%eax, -88(%rbp)
	jle	.L14
	movl	-92(%rbp), %eax
	cltq
	movl	-80(%rbp,%rax,4), %eax
	movl	%eax, %esi
	leaq	.LC5(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
.L14:
	addl	$1, -92(%rbp)
.L9:
	cmpl	$14, -92(%rbp)
	jle	.L16
	movl	$10, %edi
	call	putchar@PLT
	movl	$0, %eax
	movq	-8(%rbp), %rsi
	xorq	%fs:40, %rsi
	je	.L18
	call	__stack_chk_fail@PLT
.L18:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE6:
	.size	main, .-main
	.ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.2) 9.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	 1f - 0f
	.long	 4f - 1f
	.long	 5
0:
	.string	 "GNU"
1:
	.align 8
	.long	 0xc0000002
	.long	 3f - 2f
2:
	.long	 0x3
3:
	.align 8
4:
