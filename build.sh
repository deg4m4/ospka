#~/bin/sh

nasm s1/bootloader.asm
nasm s2+/ExtendedProgram.asm

cat s1/bootloader s2+/ExtendedProgram > img

qemu-system-x86_64 img
