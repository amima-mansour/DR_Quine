global start
global _main
extern _dprintf

start:
call _main
ret
_main:
push rbp
mov rbp,rsp
lea rdi, [rel filename]
mov rsi,03001o
mov rdx,0644o
mov rax,0x2000005
syscall
jc .end
mov rdi,rax
lea rsi,[rel msg]
call _dprintf
mov rax,0x2000006
syscall
.end:
pop rbp
mov rax,0
ret
section .data
msg: db "Hello baby",0
filename: db "Sully_5.s",0
