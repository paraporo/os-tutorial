global _main


section .text

_main:
    mov rax, 0x20000004
    mov rdi, 1
    lea rsi, [rel msg]
    mov rdx, msg.len
    syscall

    mov rax, 0x20000001
    mov rdi, 0
    syscall


section .data

msg:    db  "Hello, World!", 10
.len:   equ $ - msg
