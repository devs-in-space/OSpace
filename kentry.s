	.file	"kentry.cpp"
	.text
	.section	.rodata
.LC0:
	.string	"lessss gooooo"
	.text
	.globl	_Z11kernel_mainv
	.type	_Z11kernel_mainv, @function
_Z11kernel_mainv:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%ebx
	subl	$20, %esp
	.cfi_offset 3, -12
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	$0, -24(%ebp)
	movl	$0, -20(%ebp)
	movb	$0, -16(%ebp)
	movl	$0, -12(%ebp)
	subl	$12, %esp
	leal	-24(%ebp), %eax
	pushl	%eax
	call	_ZN8terminal4initEv@PLT
	addl	$16, %esp
	subl	$8, %esp
	leal	.LC0@GOTOFF(%ebx), %eax
	pushl	%eax
	leal	-24(%ebp), %eax
	pushl	%eax
	call	_ZN8terminal12write_stringEPKc@PLT
	addl	$16, %esp
.L2:
	jmp	.L2
	.cfi_endproc
.LFE0:
	.size	_Z11kernel_mainv, .-_Z11kernel_mainv
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB1:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE1:
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
