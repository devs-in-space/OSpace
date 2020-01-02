	.file	"vga.cpp"
	.text
	.align 2
	.globl	_ZN3vga14make_vga_entryEch
	.type	_ZN3vga14make_vga_entryEch, @function
_ZN3vga14make_vga_entryEch:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movl	12(%ebp), %eax
	movb	%dl, -20(%ebp)
	movb	%al, -24(%ebp)
	movsbw	-20(%ebp), %ax
	movw	%ax, -2(%ebp)
	movzbl	-24(%ebp), %eax
	movw	%ax, -4(%ebp)
	movzwl	-4(%ebp), %eax
	sall	$8, %eax
	movl	%eax, %edx
	movzwl	-2(%ebp), %eax
	orl	%edx, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	_ZN3vga14make_vga_entryEch, .-_ZN3vga14make_vga_entryEch
	.align 2
	.globl	_ZN3vga10make_colorENS_9vga_colorES0_
	.type	_ZN3vga10make_colorENS_9vga_colorES0_, @function
_ZN3vga10make_colorENS_9vga_colorES0_:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	12(%ebp), %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	8(%ebp), %eax
	orl	%edx, %eax
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN3vga10make_colorENS_9vga_colorES0_, .-_ZN3vga10make_colorENS_9vga_colorES0_
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB2:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE2:
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
