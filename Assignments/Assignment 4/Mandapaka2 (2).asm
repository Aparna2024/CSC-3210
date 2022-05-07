;Aparna Mandapaka
;Class: CSC3210
;Assignment 4 Part 222
;Description: write a function that can find the largest item in the array and returns it. The function take array as input
;From the main function, send initial address, type and length of the array to the function 
;You can use registers to send the data to the function
;Also return the largest item in the array using EAX register
;You can use the following array for this problem.
;Array DWORD 10,34,2,56,67,-1,9,45,0,11


.386
.model flat, stdcall
.stack

ExitProcess PROTO, dwExitCode: DWORD

.data
Array DWORD 10,34,2,56,67,-1,9,45,0,11
MAXIMUM WORD ?

.code
main PROC

		mov eax, 0 ;cleans the registers and adds 0 to get rid of any garbage values 
		mov ebx, 0 ;cleans the registers and adds 0 to get rid of any garbage values 
		mov ecx, 0 ;cleans the registers and adds 0 to get rid of any garbage values 
		mov edx, 0 ;cleans the registers and adds 0 to get rid of any garbage values 

		push OFFSET Array    ;pushes the address of the Array 
		push TYPE Array  ;pushes the TYPE of the Array 
		push LENGTHOF Array    ;pushes the Length of the Array 

		call assignmentPartII
	INVOKE ExitProcess, 0
	main ENDP

	assignmentPartII PROC ; creating a new main method 
			push esi   ;pushes register
			push edx   ;pushes register
			push ecx   ;pushes register
			push ebp ;ebp is the base pointer, this contains the address of the bottom of the stack frame 
			mov ebp, esp

			mov esi, [ebp + 28]
			mov edx, [ebp + 24]
			mov ecx, [ebp + 20]
			dec ecx

			mov edi, 0
			mov eax, [esi+edi]
			add edi, edx

		L1: 
			mov ebx, [esi+edi]
			cmp ebx, eax
			jle next
			mov eax, ebx

		next:
			add esi, edx

		loop L1
				pop ebp    ;restores the outer loop count 
				pop ecx
				pop edx
				pop esi

				ret 12  ;returns, updates and clears the stack
assignmentPartII ENDP
END main