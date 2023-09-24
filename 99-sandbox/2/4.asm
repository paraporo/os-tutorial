BITS 64

section .bss
	
section .data

EXIT_SUCCESS equ 0
SYS_exit equ 60

dVal1 dd 0xffffffff

qVal1 dq 0x123456789ABCDEF0
qVal2 dq 123

section .text
global _start
_start:
	mov rax, qword [qVal1]
	mov eax, dword [qVal1]
	mov ax, word [qVal1]
	mov al, byte [qVal1]
	lea rbx, qword [qVal1]
last:
	mov rax, EXIT_SUCCESS
	mov rdi, SYS_exit 
	syscall
	
