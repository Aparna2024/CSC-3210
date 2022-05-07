;Aparna Mandapaka
;CSC 3210
;Assignment #2
;Description: Evaluating the expression ECX = -(val3 + val1) + (-val4 - val2) +3 

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD 

.data
val1 BYTE 12 ; 8 bit variable
val2 WORD 9  ; 16 bit variable
val3 DWORD 2 ; 32 bit variable
val4 WORD 20  ; 8 bit variable

.code
main PROC 
	movzx eax, val1 ; adds zero extension into the eax register then adds the val1, which is 'C' in hexadecimal
	add eax, val3  ; adds val3 value to the eax register
	neg eax ; negates the eax register
	mov dx, val4  ; moves the value of val4 into the 16 bit register 
	neg dx        ; negates the value of dx register
	sub dx, val2    ; subtracts the dx register with val2 value
	add dx, 3     ; adds 3 to the dx register 
	movsx edx, dx  ; this moves with the sign extension and the contents from the dx register to edx
	add eax, edx  ; adds the both eax and edx registers
	mov ecx, eax ; moves the contents from the eax register to ecx register 

	INVOKE ExitProcess, 0
main ENDP 
END main
