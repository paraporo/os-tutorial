BITS 64

section .bss
	
section .data

EXIT_SUCCESS equ 0
SYS_exit equ 60

eVal dq 0x123456789ABCDEF0
bVal db 0xef

section .text
global _start
_start:
	mov rax, 0xffffffffff
	movzx rax, word [bVal]

last:
	mov rax, EXIT_SUCCESS
	mov rdi, SYS_exit 
	syscall
	
