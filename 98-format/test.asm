section .data

EXIT_SUCCESS equ 0
SYS_exit equ 60

printLineCount equ 10
squareSize equ 10

hello db "Hello World!", 0xA
squareChar db 'X'
newLine db 0xA
leftChar db 'B'
middleChar db 'D'
rightChar db 'H'

section .text
global _start
_start:
	; Linux Preparation
	mov ebx, 1
	mov edx, 1
	mov r8b, squareSize
	jmp printSquare
printSquareReturn:
	jmp last

; Print square
printSquare:
	mov r9b, 0
printSquareLoop:
	cmp r9b, r8b
	jge printSquareReturn
	mov r10b, squareSize
	jmp printLineBetter
printLineReturn:
	mov eax, 4
	mov ecx, newLine
	int 0x80
	add r9b, 1
	cmp r9b, r8b
	jmp printSquareLoop

; Print hello line
printLine:
	mov r11b, 0
	mov ecx, squareChar
printLineLoop:
	cmp r11b, r10b
	jge printLineReturn
	mov eax, 4
	int 0x80
	add r11b, 1
	jmp printLineLoop

printLineBetter:
	mov r11b, 0
printLineBetterLoop:
	cmp r11b, r10b
	jge printLineReturn
	mov eax, 4
	cmp r11b, r9b
	jb setLeftChar
	jg setRightChar
	mov ecx, middleChar
	setCharReturn:
	int 0x80
	add r11b, 1
	jmp printLineBetterLoop

setLeftChar:
	mov ecx, leftChar
	jmp setCharReturn

setRightChar:
	mov ecx, rightChar
	jmp setCharReturn

last:
	mov rax, SYS_exit
	mov rdi, EXIT_SUCCESS
	syscall 	
