#!/bin/bash

nasm -f elf ./src/boot.asm -o boot.o
g++ -m32 -c  ./src/kentry.c -ffreestanding -fno-exceptions -fno-rtti
ld -m elf_i386 -T ./src/linker.ld kentry.o boot.o -o os1 -nostdlib


grub-file --is-x86-multiboot os1

mkdir -p iso/boot/grub
cp os1 iso/boot/os1
cp ./src/grub.cfg iso/boot/grub/grub.cfg
grub-mkrescue -o os1.iso iso