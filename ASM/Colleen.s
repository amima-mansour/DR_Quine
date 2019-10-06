; Hello program.
global start
global _main
extern _printf

start:
call _main
ret

_main:
	; Hello main.
	push rbp
	mov rbp,rsp
	lea rdi,[rel msg]
	mov rsi,10
	mov rdx,9
	mov rcx,34
	lea r8,[rel msg]
	call _printf
	pop rbp
	mov rax,0
	ret
section .data
msg: db "; Hello program.%1$cglobal start%1$cglobal _main%1$cextern _printf%1$c%1$cstart:%1$ccall _main%1$cret%1$c%1$c_main:%1$c%2$c; Hello main.%1$c%2$cpush rbp%1$c%2$cmov rbp,rsp%1$c%2$clea rdi,[rel msg]%1$c%2$cmov rsi,10%1$c%2$cmov rdx,9%1$c%2$cmov rcx,34%1$c%2$clea r8,[rel msg]%1$c%2$ccall _printf%1$c%2$cpop rbp%1$c%2$cmov rax,0%1$c%2$cret%1$csection .data%1$cmsg: db %3$c%4$s%3$c,0%1$c",0
