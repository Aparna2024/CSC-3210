;convert the pseudocode into assembly code


.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
array_list DWORD 10, 11, 13, 18, 21, 23, 24, 17, 45
array_size = LENGTHOF array_list

	index = 0
sum DWORD ?

.code
main PROC 
	mov eax, 0
	mov ecx, array_size
	mov esi, index

	L1:
		cmp esi, array_size
		jnle endWhile
		jmp whileloop

	whileloop:
		test array_list[esi * (TYPE array_list)],1
		jz ifBlock
		jmp next

	ifBlock:
		add eax, array_list [esi * (TYPE array_list)]

	next:
	endwhile:
		inc esi
		loop L1

	mov sum, eax

	INVOKE ExitProcess,0

main ENDP
END main