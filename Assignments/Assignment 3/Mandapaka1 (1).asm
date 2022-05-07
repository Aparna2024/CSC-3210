;Student: Aparna Mandapaka
;Class: CSC 3210
;Assignment#: 3
;Description: Using the loop instrution with indirect addressing to solve array's elements 

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
inputStr BYTE "A", "B", "C", "D", "E", "F", "G", "H"

.code
main PROC
	mov edi,0
	mov ebx, 0
	mov ecx, 0
	mov eax, 0
	mov ebx, OFFSET inputStr ; this is the address reference 
	mov edi, OFFSET inputStr ; address reference 
	add edi, 7
	mov ecx, 4 ; for this we will use loop

	L1:
		mov al, [edi]
		xchg [ebx], al
		xchg al, [edi]

		dec edi ; decrease 
		inc ebx ; increases the loop
		Loop L1

		INVOKE ExitProcess,0 
main ENDP
END main