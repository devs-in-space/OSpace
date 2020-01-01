#!/bin/bash

nasm -f elf boot.asm -o boot.o
g++ -m32 -c  kentry.c -ffreestanding -fno-exceptions -fno-rtti
ld -m elf_i386 -T linker.ld kentry.o boot.o -o os1 -nostdlib


grub-file --is-x86-multiboot os1.bin

mkdir -p isodir/boot/grub
cp os1 isodir/boot/os1
cp grub.cfg isodir/boot/grub/grub.cfg
grub-mkrescue -o os1.iso isodir