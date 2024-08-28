[org 0x7c00]
[bits 16]


mov si, CHEESEOS_INTRO
call print


jmp $

print:
    pusha
    str_loop:
        mov al, [si]
        cmp al, 0
        jne print_char
        popa
        ret

    print_char: 
        mov ah, 0x0e
        int 0x10
        add si, 1
        jmp str_loop


CHEESEOS_INTRO: db "CheeseOS on Top - CheeseOS Unstable Alpha 0.0.1", 0x0a, 0x0d, 0


times 510-($-$$) db 0
db 0x55, 0xaa