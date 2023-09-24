global _main

section .data

bVal db 0b11111111

section .text
_main:
	mov al, byte [bVal]
	


last:
	mov rax, 0x02000001
	xor rdi, rdi
	syscall
