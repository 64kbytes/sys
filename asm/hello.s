; Hello World program
; 
; Compile with nasm -f elf hello.s
; Link with ld -m elf_i386 hello.o -o hello

%macro exit 0
	mov	ebx, 0
	mov eax, 1
	int 80h
%endmacro

%macro print 1
	mov	edx, 13
	mov ecx, %1
	mov ebx, 1
	mov eax, 4
	int 80h
%endmacro

SECTION .data:

message:	db	'Hello World!', 0Ah


SECTION .text:
global _start

_start:
	
	print message

.loop:
	jmp .loop	

	exit
	