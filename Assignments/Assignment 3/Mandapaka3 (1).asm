;Student: Aparna Mandapaka
; Class: CSC 3210
;Assignment #: 3
;Description: Translate the code into assembly and use if-else statement 

.386
.model flat, stdcall
ExitProcess PROTO, dwExitCode: DWORD

.data
var1 DWORD 10d
var2 DWORD 11d
var3 DWORD 12d

.code
main PROC
	mov eax,0 ; moving 0's to the register to get rid of any garbage values
	mov ebx,0 ; moving 0's to the register to get rid of any garbage values
	mov ecx, 0 ; moving 0's to the register to get rid of any garbage values
	mov edx, 0 ; moving 0's to the register to get rid of any garbage values
	mov ebx, var2 ; moving the value from var2 to ebx register
	cmp var1, ebx ; comparing the values of the var1 and ebx register

	jg if_block
		cmp var3, ebx ; comparing the values in var3 and ebx register

	jge else_block
	if_block:
		add edx, var2
		add edx, var3
		mov var1, edx
		inc var2
		inc var3

		jmp next

		else_block:
			dec var1
			dec var2
			dec var3
		next:  ; this is a label if if block is skipped and goes to else block






	INVOKE ExitProcess, 0
main ENDP
END main