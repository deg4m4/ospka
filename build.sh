#~/bin/sh

nasm bootloader.asm

qemu-system-x86_64 bootloader
