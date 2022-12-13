[ORG 0x7e00]

mov bx, espsuccess
call printstring

%include "s2+/print.asm"

espsuccess: db 'success message', 0

times 2048-($-$$) db 0