%macro systemcall 1
mov rdi, %1
call _system
%endmacro

%macro opencall 1
mov rdi,%1
mov rsi,03001o
mov rdx,0644o
mov rax,0x2000005
syscall
jc .end
%endmacro

%macro sprintfcall 3
mov rdi,%1
mov rsi,%2
mov rdx,%3
call _sprintf
%endmacro

global start
global _main
extern _dprintf
extern _sprintf
extern _system
start:
call _main
ret
_main:
push rbp
mov rbp,rsp
mov rbx,index
.loop:
sprintfcall filename,filename_format,rbx
opencall filename
mov rdi,rax
lea rsi,[rel msg]
mov rdx,10
call _dprintf
sprintfcall cmd,system_format,rbx
systemcall cmd
mov rax,0x2000006
syscall
cmp rbx,0
dec rbx
jge .loop
.end:
pop rbp
mov rax,0
ret
section .data
index: equ 5
msg: db "global start%1$cglobal _main%1$cextern _printf%1$c",0
filename_format: db "Sully_%d.s",0
;system_format: db "nasm -f macho64 Sully_%1$d.s -o objs/Sully_%1$d.o && ld -macosx_version_min 10.8 -lSystem objs/Sully_%1$d.o -o Sully_%1$d", 0
system_format: db "nasm -f macho64 Sully_%1$d.s -o Sully_%1$d.o", 0
section .bss
filename: resb 10
cmd: resb 100
