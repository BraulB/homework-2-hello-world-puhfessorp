

; Begin data section
section		.data

SYS_WRITE			equ		1
SYS_EXIT			equ		60

EXIT_SUCCESS		equ		0
EXIT_SOMEFAIL		equ 	137

FD_STDIN			equ		0
FD_STDOUT			equ		1
FD_STDERR			equ		2

HELLO_STRING		db		"Hello, my name is Braulio Becerra",13,10
HELLO_STRING_LEN	equ		$-HELLO_STRING

; Begin uninitialized data section
section		.bss


; Begin text section
section		.text


;	Entry point to our program
global _start
_start:

	;	Print a Hello.
	mov rax, SYS_WRITE
	mov rdi, FD_STDOUT
	mov rsi, HELLO_STRING
	mov rdx, HELLO_STRING_LEN
	syscall
	
	; Setup the return value and call the exit syscall
	mov rax, SYS_EXIT				; Move SYS_EXIT value into rax
	mov rdi, EXIT_SUCCESS			; Move EXIT_SUCCESS value into rdi
	;mov rdi, EXIT_SOMEFAIL
	syscall							; Launch system call


