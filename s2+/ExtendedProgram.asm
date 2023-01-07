[ORG 0x7e00]

mov bx, espsuccess
call printstring

jmp $

%include "s2+/print.asm"

espsuccess: db 'Hello, Success!', 0

times 2048-($-$$) db 0
