global _main

section .text

_main:
	mov rax, 0x02000004
	syscall


;last:
;	mov rax, EXIT_SUCCESS
;	mov rdi, SYS_exit
;	syscall
