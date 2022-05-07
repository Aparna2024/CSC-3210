;var4 = (var1*var2)/(var3*5)
;var1 is initialized with 100
;var2 is initialized with 200
;var3 is initialized with 50

.386
.model flat, stdcall
.stack 4096

ExitProcess PROTO, dwExitCode:DWORD

.data
var1 WORD 100
var2 WORD 200
var3 WORD 50
var4 WORD 0


.code
main PROC
	mov ax, var1
	imul var2
	mov var4, ax
	mov ax, 5
	imul var3
	mov var3, ax
	mov ax, var4
	idiv var3
	mov var4, ax





	INVOKE ExitProcess,0
main ENDP
END main