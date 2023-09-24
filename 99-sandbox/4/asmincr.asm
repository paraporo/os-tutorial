section .bss

outputString resb 100

section .data

SYS_exit equ 60
EXIT_SUCCESS equ 0
limit equ 1000000000

zeroChar db '0'
oneChar db '1'

section .text
global _start
_start:
	mov r8d, limit
	mov r9d, 0
startLoop:
	cmp r9d, r8d
	jge printX
	add r9d, 1
	jmp startLoop

printOne:
	mov [r13d], oneChar
	jmp printOneReturn

printX:
	mov r12d, 1
	mov r13d, outputString
	mov r10d, r9d
printXloop:
	mov r11d, r10d
	and r11d, 1
	cmp r11d, r12d
	je printOne
	mov byte [r13d], '0'
printOneReturn:
	mov eax, 4
	int 0x80
	shr r10d, 1
	je last
	jmp printXloop

last:
	mov rax, SYS_exit
	mov rdi, EXIT_SUCCESS
	syscall
