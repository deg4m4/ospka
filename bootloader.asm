[ORG 0x7c00]

; mov bp, 0x7c00
; mov sp, bp

mov [BOOT_DISK], dl

mov bx, myname
call printstring

call DiskRead

jmp $

%include "print.asm"
%include "disk_read.asm"

myname:
    db 'My Name Is Parthka!', 0

times 510-($-$$) db 0
dw 0xaa55