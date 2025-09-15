

; Begin data section
section		.data

SYS_EXIT			equ		60

EXIT_SUCCESS		equ		0
;EXIT_SOMEFAIL		equ 	137

; Begin uninitialized data section
section		.bss


; Begin text section
section		.text


;	Entry point to our program
global _start
_start:

	; Setup the return value and call the exit syscall
	mov rax, SYS_EXIT
	;mov rdi, EXIT_SOMEFAIL
	mov rdi, EXIT_SUCCESS
	syscall


