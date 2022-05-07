;Aparna Mandapaka
;Class: CSC 3210
;Assignment 4 Part 1
;Description: Converting the given code into assembly 

.386
.model flat, stdcall
.stack 4096
ExitProcess PROTO, dwExitCode: DWORD 

.data
	sum DWORD 0     ;we are using DWORD because it was mentioned to use 32 bit 
	i DWORD 0  
	j DWORD 12
	var1 DWORD 3
	var2 DWORD 3
	var3 DWORD 0

.code
main PROC
	mov eax,0 ; cleaning registers with 0 so that there are no more garbage values
	mov ebx,0
	mov ecx,0
	mov edx, 0

	mov ecx, j
	mov eax, var1  ; value of var1 =3 is moved into the eax register 
	mov ebx, var2	; moving the value of var2 into the ebx register
	mov edx, var3	;moving the value of var3 into the edx register
	mov edi, sum     ; moving sum into the edi register 
	mov esi, i       ; moving the value of i into the esi register

	for_loop:
			cmp esi, ecx		;compares the values of the ecx and esi register
			jge exit_for_loop
				cmp eax, edx
				jle else_block
				sub eax, esi
				jmp next
	else_block:
		add edx, esi
	next:
		mov edi, eax
		add edi, ebx
		add edi, edx
	inc esi
	loop for_loop
	exit_for_loop:
				mov sum,edi
	INVOKE ExitProcess, 0
main ENDP 
END main