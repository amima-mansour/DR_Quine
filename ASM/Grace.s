; Hello program.
%macro FT 1
global _main
extern _dprintf

_main:
push rbp
mov rbp,rsp
lea rdi,[rel %1]
mov rsi,03001o
mov rdx,0644o
mov rax,SC_OPEN
syscall
jc .end
mov rdi,rax
lea rsi,[rel msg]
mov rdx,10
lea rcx,[rel msg]
mov r8,37
mov r9,34
call _dprintf
mov rax,SC_CLOSE
syscall
.end:
mov rsp,rbp
pop rbp
mov rax,0
ret
%endmacro
section .data
msg: db "; Hello program.%1$c%3$cmacro FT 1%1$cglobal _main%1$cextern _dprintf%1$c%1$c_main:%1$cpush rbp%1$cmov rbp,rsp%1$clea rdi,[rel %3$c1]%1$cmov rsi,03001o%1$cmov rdx,0644o%1$cmov rax,SC_OPEN%1$csyscall%1$cjc .end%1$cmov rdi,rax%1$clea rsi,[rel msg]%1$cmov rdx,10%1$clea rcx,[rel msg]%1$cmov r8,37%1$cmov r9,34%1$ccall _dprintf%1$cmov rax,SC_CLOSE%1$csyscall%1$c.end:%1$cmov rsp,rbp%1$cpop rbp%1$cmov rax,0%1$cret%1$c%3$cendmacro%1$csection .data%1$cmsg: db %4$c%2$s%4$c,0%1$cfilename: db %4$cGrace_kid.s%4$c,0%1$c%3$cdefine SC_OPEN 0x2000005%1$c%3$cdefine SC_CLOSE 0x2000006%1$c%1$csection .text%1$cglobal start%1$c%1$cstart:%1$cFT filename%1$cret%1$c",0
filename: db "Grace_kid.s",0
%define SC_OPEN 0x2000005
%define SC_CLOSE 0x2000006

section .text
global start

start:
FT filename
ret
