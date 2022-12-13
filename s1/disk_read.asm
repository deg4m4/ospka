
PROGRAM_SPACE equ 0x7e00

DiskRead:
    mov ah, 0x02
    mov bx, PROGRAM_SPACE
    mov al, 4
    mov dl, [BOOT_DISK]
    mov ch, 0x00
    mov dh, 0x00
    mov cl, 0x02

    int 0x13

    jc DiskReadFailed
    ret

%include "s2+/print.asm"

BOOT_DISK:
    db 0

DiskReadFailedString:
    db 'Disk Read Error', 0

DiskReadFailed:
    mov bx, DiskReadFailedString
    call printstring
    
    jmp $