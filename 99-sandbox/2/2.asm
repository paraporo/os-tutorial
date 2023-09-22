BITS 64

section .bss

bArr resb 100
wArr resw 3000
dwArr resd 200
qArr resq 5000
qRes resq 1

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
    mov rax, qword [qwNum]
    add rax, qword [bNum]
    mov qword [qRes], rax
    mov rax, 1
    mov rdi, 1
    mov rsi, "BING Q"
    mov rdx, 7
    syscall
;    mov dl, 'Q'
;    mov ah, 2
;    syscall
;    mov ah, 0x0e
;    mov al, 'Q'
;    int 0x10

last:
    mov rax, SYS_exit
    mov rdi, EXIT_SUCCESS
    syscall
