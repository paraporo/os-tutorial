BITS 64

section .bss
	
section .data

EXIT_SUCCESS equ 0
SYS_exit equ 60

qVal dq 0x123456789ABCDEF0

section .text
global _start
_start:
	mov rax, [qVal]

last:
	mov rax, EXIT_SUCCESS
	mov rdi, SYS_exit 
	syscall
	
