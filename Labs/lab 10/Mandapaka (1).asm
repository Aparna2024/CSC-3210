;write an assembly program to find the largest item in an array and store it in a variable named MAXIMUM
;write a loop, inside a loop, compare the each array item with the maximum
;if the array item is greater than the MAXIMUM, update MAXIMUM with that array item
.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
array WORD 10, 2, 23, 45, 21,11
MAXIMUM WORD ?


.code
main PROC

	mov eax, 00000000
	mov ebx, 00000000
	mov ecx, 00000000
	mov edx, 00000000

	mov ecx, 5
	mov esi, OFFSET array
	mov edx, OFFSET MAXIMUM
	mov ax, [esi]
	mov[edx], ax
	cmp[edx], ax
	jge L1

	L1:
		add esi, 2
		mov ax, [esi]
		cmp ax, [edx]
		jle L2
		mov [edx], ax

	L2:
		LOOP L1
		; access maximum word


	INVOKE ExitProcess,0

main ENDP
END main 