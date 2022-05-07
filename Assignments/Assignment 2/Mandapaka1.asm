;Aparna Mandapaka
;CSC 3210
;Assignment #2
;Description: Implementing the following arithmetic expression EDX = (val3 + val4) - (val2 - val1) - (5/3)*7

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
val1 WORD 120h
val2 WORD 39h
val3 WORD 20h
val4 WORD 27h

.code 
main PROC
	mov eax, 0 ; cleans the register and adds it with 0 to make it more readable 
	mov ebx, 0
	mov ecx, 0
	mov edx, 0

	mov cx, val3 ; moving the value of val3 into the 16 bit cx register
	add cx, val4 ; val3 is stored in cx register, now we wil add value of val4 to cx register 
	mov dx, val2 ;moving the value of val2 to dx register 
	sub dx, val1  ;subtracting the val1 from the dx register, which is 120-39
	sub cx, dx ;subtracting the dx from cx
	mov ax, cx ; now we are moving the sum cx int the ax register
	sub ax, (5/3)*7 ; performing the math and then subtracting it frm the ax register


	movsx edx, ax ; copying the contains from the ax register to eax
	mov edx, eax ; moving the contents from eax register to edx

	INVOKE ExitProcess, 0

main ENDP
END main