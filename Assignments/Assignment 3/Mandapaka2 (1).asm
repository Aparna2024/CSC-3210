;Student: Aparna Mandapaka
;Class: CSC 3210
;Assignment#: 3
;Description:Writing an assembly code for the value 0506-0307-0408-0102h

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode:DWORD

.data
qVal QWORD 0506030704080102h

.code
main PROC
;intilizing all the registers 0's
	mov edi, 0
	mov ebx,0
	mov ecx, 0
	mov eax,0
	mov edi, OFFSET qVal  ; storing the qVal address into the edi register
	mov ax,  WORD PTR [edi + 6] ; fetching the word from the adadress 
	mov bx,  WORD PTR [edi + 4]
	mov cx,  WORD PTR [edi + 2]
	mov dx,  WORD PTR [edi]
	add ax, dx ;we are adding the values from dx register to ax
	add ax, cx ; adding the values from cx register to the ax register
	add ax, bx; adding the values from bx to ax register 

	INVOKE ExitProcess, 0
main ENDP
END main
