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
    mov rbp, rsp
    lea rdi, [rel msg]
    call _printf
    pop rbp
    mov	rax,0
	ret
section .data
msg: db "; Hello program.",10,0