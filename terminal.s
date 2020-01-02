	.file	"terminal.cpp"
	.text
	.globl	_Z7str_lenPKc
	.type	_Z7str_lenPKc, @function
_Z7str_lenPKc:
.LFB0:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$16, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	$0, -4(%ebp)
.L3:
	movl	8(%ebp), %edx
	movl	-4(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	testb	%al, %al
	je	.L2
	addl	$1, -4(%ebp)
	jmp	.L3
.L2:
	movl	-4(%ebp), %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE0:
	.size	_Z7str_lenPKc, .-_Z7str_lenPKc
	.align 2
	.globl	_ZN8terminal4initEv
	.type	_ZN8terminal4initEv, @function
_ZN8terminal4initEv:
.LFB1:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	_ZN8terminal12terminal_rowE@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	_ZN8terminal15terminal_columnE@GOT(%ebx), %eax
	movl	$0, (%eax)
	subl	$8, %esp
	pushl	$0
	pushl	$1
	call	_ZN3vga10make_colorENS_9vga_colorES0_@PLT
	addl	$16, %esp
	movl	%eax, %edx
	movl	_ZN8terminal14terminal_colorE@GOT(%ebx), %eax
	movb	%dl, (%eax)
	movl	_ZN8terminal15terminal_bufferE@GOT(%ebx), %eax
	movl	$753664, (%eax)
	movl	$0, -12(%ebp)
.L9:
	cmpl	$23, -12(%ebp)
	ja	.L10
	movl	$0, -16(%ebp)
.L8:
	cmpl	$79, -16(%ebp)
	ja	.L7
	movl	-12(%ebp), %edx
	movl	%edx, %eax
	sall	$2, %eax
	addl	%edx, %eax
	sall	$4, %eax
	movl	%eax, %edx
	movl	-16(%ebp), %eax
	addl	%edx, %eax
	movl	%eax, -20(%ebp)
	movl	_ZN8terminal14terminal_colorE@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %eax
	movl	_ZN8terminal15terminal_bufferE@GOT(%ebx), %edx
	movl	(%edx), %edx
	movl	-20(%ebp), %ecx
	addl	%ecx, %ecx
	leal	(%edx,%ecx), %esi
	subl	$8, %esp
	pushl	%eax
	pushl	$32
	call	_ZN3vga14make_vga_entryEch@PLT
	addl	$16, %esp
	movw	%ax, (%esi)
	addl	$1, -16(%ebp)
	jmp	.L8
.L7:
	addl	$1, -12(%ebp)
	jmp	.L9
.L10:
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE1:
	.size	_ZN8terminal4initEv, .-_ZN8terminal4initEv
	.align 2
	.globl	_ZN8terminal9set_colorEh
	.type	_ZN8terminal9set_colorEh, @function
_ZN8terminal9set_colorEh:
.LFB2:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$4, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	movl	8(%ebp), %edx
	movb	%dl, -4(%ebp)
	movl	_ZN8terminal14terminal_colorE@GOT(%eax), %eax
	movzbl	-4(%ebp), %edx
	movb	%dl, (%eax)
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE2:
	.size	_ZN8terminal9set_colorEh, .-_ZN8terminal9set_colorEh
	.align 2
	.globl	_ZN8terminal12put_entry_atEchjj
	.type	_ZN8terminal12put_entry_atEchjj, @function
_ZN8terminal12put_entry_atEchjj:
.LFB3:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$32, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.dx
	addl	$_GLOBAL_OFFSET_TABLE_, %edx
	movl	8(%ebp), %ecx
	movl	12(%ebp), %eax
	movb	%cl, -28(%ebp)
	movb	%al, -32(%ebp)
	movl	20(%ebp), %ecx
	movl	%ecx, %eax
	sall	$2, %eax
	addl	%ecx, %eax
	sall	$4, %eax
	movl	%eax, %ecx
	movl	16(%ebp), %eax
	addl	%ecx, %eax
	movl	%eax, -12(%ebp)
	movzbl	-32(%ebp), %ecx
	movsbl	-28(%ebp), %eax
	movl	_ZN8terminal15terminal_bufferE@GOT(%edx), %ebx
	movl	(%ebx), %ebx
	movl	-12(%ebp), %esi
	addl	%esi, %esi
	addl	%ebx, %esi
	subl	$8, %esp
	pushl	%ecx
	pushl	%eax
	movl	%edx, %ebx
	call	_ZN3vga14make_vga_entryEch@PLT
	addl	$16, %esp
	movw	%ax, (%esi)
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE3:
	.size	_ZN8terminal12put_entry_atEchjj, .-_ZN8terminal12put_entry_atEchjj
	.align 2
	.globl	_ZN8terminal8put_charEc
	.type	_ZN8terminal8put_charEc, @function
_ZN8terminal8put_charEc:
.LFB4:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	pushl	%esi
	pushl	%ebx
	subl	$16, %esp
	.cfi_offset 6, -12
	.cfi_offset 3, -16
	call	__x86.get_pc_thunk.bx
	addl	$_GLOBAL_OFFSET_TABLE_, %ebx
	movl	8(%ebp), %eax
	movb	%al, -12(%ebp)
	movl	_ZN8terminal12terminal_rowE@GOT(%ebx), %eax
	movl	(%eax), %esi
	movl	_ZN8terminal15terminal_columnE@GOT(%ebx), %eax
	movl	(%eax), %ecx
	movl	_ZN8terminal14terminal_colorE@GOT(%ebx), %eax
	movzbl	(%eax), %eax
	movzbl	%al, %edx
	movsbl	-12(%ebp), %eax
	pushl	%esi
	pushl	%ecx
	pushl	%edx
	pushl	%eax
	call	_ZN8terminal12put_entry_atEchjj
	addl	$16, %esp
	movl	_ZN8terminal15terminal_columnE@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	_ZN8terminal15terminal_columnE@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	_ZN8terminal15terminal_columnE@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$80, %eax
	sete	%al
	testb	%al, %al
	je	.L15
	movl	_ZN8terminal15terminal_columnE@GOT(%ebx), %eax
	movl	$0, (%eax)
	movl	_ZN8terminal12terminal_rowE@GOT(%ebx), %eax
	movl	(%eax), %eax
	leal	1(%eax), %edx
	movl	_ZN8terminal12terminal_rowE@GOT(%ebx), %eax
	movl	%edx, (%eax)
	movl	_ZN8terminal12terminal_rowE@GOT(%ebx), %eax
	movl	(%eax), %eax
	cmpl	$24, %eax
	sete	%al
	testb	%al, %al
	je	.L15
	movl	_ZN8terminal12terminal_rowE@GOT(%ebx), %eax
	movl	$0, (%eax)
.L15:
	nop
	leal	-8(%ebp), %esp
	popl	%ebx
	.cfi_restore 3
	popl	%esi
	.cfi_restore 6
	popl	%ebp
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE4:
	.size	_ZN8terminal8put_charEc, .-_ZN8terminal8put_charEc
	.align 2
	.globl	_ZN8terminal12write_stringEPKc
	.type	_ZN8terminal12write_stringEPKc, @function
_ZN8terminal12write_stringEPKc:
.LFB5:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	subl	$24, %esp
	call	__x86.get_pc_thunk.ax
	addl	$_GLOBAL_OFFSET_TABLE_, %eax
	pushl	8(%ebp)
	call	_Z7str_lenPKc
	addl	$4, %esp
	movl	%eax, -16(%ebp)
	movl	$0, -12(%ebp)
.L18:
	movl	-12(%ebp), %eax
	cmpl	-16(%ebp), %eax
	jnb	.L19
	movl	8(%ebp), %edx
	movl	-12(%ebp), %eax
	addl	%edx, %eax
	movzbl	(%eax), %eax
	movsbl	%al, %eax
	subl	$12, %esp
	pushl	%eax
	call	_ZN8terminal8put_charEc
	addl	$16, %esp
	addl	$1, -12(%ebp)
	jmp	.L18
.L19:
	nop
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
.LFE5:
	.size	_ZN8terminal12write_stringEPKc, .-_ZN8terminal12write_stringEPKc
	.section	.text.__x86.get_pc_thunk.ax,"axG",@progbits,__x86.get_pc_thunk.ax,comdat
	.globl	__x86.get_pc_thunk.ax
	.hidden	__x86.get_pc_thunk.ax
	.type	__x86.get_pc_thunk.ax, @function
__x86.get_pc_thunk.ax:
.LFB6:
	.cfi_startproc
	movl	(%esp), %eax
	ret
	.cfi_endproc
.LFE6:
	.section	.text.__x86.get_pc_thunk.dx,"axG",@progbits,__x86.get_pc_thunk.dx,comdat
	.globl	__x86.get_pc_thunk.dx
	.hidden	__x86.get_pc_thunk.dx
	.type	__x86.get_pc_thunk.dx, @function
__x86.get_pc_thunk.dx:
.LFB7:
	.cfi_startproc
	movl	(%esp), %edx
	ret
	.cfi_endproc
.LFE7:
	.section	.text.__x86.get_pc_thunk.bx,"axG",@progbits,__x86.get_pc_thunk.bx,comdat
	.globl	__x86.get_pc_thunk.bx
	.hidden	__x86.get_pc_thunk.bx
	.type	__x86.get_pc_thunk.bx, @function
__x86.get_pc_thunk.bx:
.LFB8:
	.cfi_startproc
	movl	(%esp), %ebx
	ret
	.cfi_endproc
.LFE8:
	.ident	"GCC: (Ubuntu 7.4.0-1ubuntu1~18.04.1) 7.4.0"
	.section	.note.GNU-stack,"",@progbits
