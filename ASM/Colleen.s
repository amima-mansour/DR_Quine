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
lea rdx,[rel msg]
mov rcx,34
call _printf
mov rsp,rbp
pop rbp
mov rax,0
ret
section .data
msg: db "; Hello program.%1$cglobal start%1$cglobal _main%1$cextern _printf%1$c%1$cstart:%1$ccall _main%1$cret%1$c%1$c_main:%1$c; Hello main.%1$cpush rbp%1$cmov rbp,rsp%1$clea rdi,[rel msg]%1$cmov rsi,10%1$clea rdx,[rel msg]%1$cmov rcx,34%1$ccall _printf%1$cmov rsp,rbp%1$cpop rbp%1$cmov rax,0%1$cret%1$csection .data%1$cmsg: db %3$c%2$s%3$c,0%1$c",0
