;Aparna Mandapaka
;CSC 3210
;Assignment #2
;Description: This expression evaluates 
			; z0 = x + 130
			;z1 = y - x +z0
			;z2 = r + x -z1
.386 
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode: DWORD

.data
z DWORD 3 DUP(?)
x WORD 10
y WORD 15
r WORD 4

.code
main PROC
	mov eax,0 ; cleans the register and adds it with 0 to make it more readable
	mov ebx,0
	mov ecx, 0
	mov edx,0
	movsx eax, x ; moves the value of x into eax register 
	add eax, 130 ; adds 130 to the content in the eax register
	mov edx, OFFSET z ;loads the address of z into the edx register
	mov z[0], eax ;moves the value x+130 into the z[0]
	mov cx, y ; loads the y value 
	sub cx, x ;subtracts x from the cx register 
	movsx ecx, cx ;moves the value of cx into ecx with 0 extension
	add ecx, z[0]
	mov z[4], ecx
	mov dx, r ; moves the r value into the dx register 
	add dx, x ;adds x to the dx register
	movsx edx, dx ; moves the dx regiser into edx register 
	sub edx, z[4]
	mov z[8], edx ;moves r + x - z1

	INVOKE ExitProcess,0
main ENDP
END main