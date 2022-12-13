[ORG 0x7c00]

; mov bp, 0x7c00
; mov sp, bp

mov [BOOT_DISK], dl

call DiskRead

jmp PROGRAM_SPACE

%include "s1/disk_read.asm"

times 510-($-$$) db 0
dw 0xaa55