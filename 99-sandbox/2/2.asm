BITS 64

section .bss

bArr resb 100
wArr resw 3000
dwArr resd 200
qArr resq 5000


section .data

EXIT_SUCCESS equ 0
SYS_exit equ 60

bNum db 10
wNum dw 10291
dwNum dd 2126010
qwNum dq 10000000000

section .text
global _start
_start:
    mov ah, 0x0e
    mov al, 'Q'
    int 0x10

last:
    mov rax, SYS_exit
    mov rdi, EXIT_SUCCESS
    syscall