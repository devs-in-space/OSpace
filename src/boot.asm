[bits 32]

global _start
extern kernel_main
section .mbHeader

align 0x4

MODULEALIGN equ 1<<0
MEMINFO equ 1<<1
FLAGS equ MODULEALIGN | MEMINFO
MAGIC equ 0x1BADB002
CHECKSUM EQU -(MAGIC + FLAGS)

MutliBootHeader:
	dd MAGIC
	dd FLAGS
	dd CHECKSUM

_start:
	push ebx
	call kernel_main