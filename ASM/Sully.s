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
%macro closecall 1
mov rdi,%1
mov rax,0x2000006
syscall
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
sub rsp,16
mov qword[rsp],index
cmp qword[rsp],0
jl .end
mov rdi,sully_5
mov rsi,0
mov rax,0x2000005
syscall
jc .sully
dec qword[rsp]
closecall rdi
.sully:
sprintfcall filename,filename_format,qword[rsp]
opencall filename
mov rdi,rax
lea rsi,[rel msg]
mov rdx,10
mov rcx,37
lea r8,[rel msg]
mov r9,34
call _dprintf
sprintfcall cmd,compil_format,qword[rsp]
systemcall cmd
cmp qword[rsp],0
jle .end
sprintfcall cmd,exec_format,qword[rsp]
systemcall cmd
.end:
closecall rdi
mov rsp,rbp
pop rbp
mov rax,0
ret

section .data
index: equ 5
msg: db "%2$cmacro systemcall 1%1$cmov rdi, %2$c1%1$ccall _system%1$c%2$cendmacro%1$c%2$cmacro opencall 1%1$cmov rdi,%2$c1%1$cmov rsi,03001o%1$cmov rdx,0644o%1$cmov rax,0x2000005%1$csyscall%1$cjc .end%1$c%2$cendmacro%1$c%2$cmacro closecall 1%1$cmov rdi,%2$c1%1$cmov rax,0x2000006%1$csyscall%1$c%2$cendmacro%1$c%2$cmacro sprintfcall 3%1$cmov rdi,%2$c1%1$cmov rsi,%2$c2%1$cmov rdx,%2$c3%1$ccall _sprintf%1$c%2$cendmacro%1$c%1$cglobal start%1$cglobal _main%1$cextern _dprintf%1$cextern _sprintf%1$cextern _system%1$c%1$cstart:%1$ccall _main%1$cret%1$c%1$c_main:%1$cpush rbp%1$cmov rbp,rsp%1$csub rsp,16%1$cmov qword[rsp],index%1$ccmp qword[rsp],0%1$cjl .end%1$cmov rdi,sully_5%1$cmov rsi,0%1$cmov rax,0x2000005%1$csyscall%1$cjc .sully%1$cdec qword[rsp]%1$cclosecall rdi%1$c.sully:%1$csprintfcall filename,filename_format,qword[rsp]%1$copencall filename%1$cmov rdi,rax%1$clea rsi,[rel msg]%1$cmov rdx,10%1$cmov rcx,37%1$clea r8,[rel msg]%1$cmov r9,34%1$ccall _dprintf%1$csprintfcall cmd,compil_format,qword[rsp]%1$csystemcall cmd%1$ccmp qword[rsp],0%1$cjle .end%1$csprintfcall cmd,exec_format,qword[rsp]%1$csystemcall cmd%1$c.end:%1$cclosecall rdi%1$cmov rsp,rbp%1$cpop rbp%1$cmov rax,0%1$cret%1$c%1$csection .data%1$cindex: equ %5$d%1$cmsg: db %4$c%3$s%4$c,0%1$cfilename_format: db %4$cSully_%2$cd.s%4$c,0%1$ccompil_format: db %4$cnasm -f macho64 Sully_%2$c1$d.s -o Sully_%2$c1$d.o && ld -macosx_version_min 10.8 -lSystem Sully_%2$c1$d.o -o Sully_%2$c1$d%4$c,0%1$cexec_format: db %4$c./Sully_%2$cd%4$c,0%1$csully_5: db %4$csully_5.s%4$c,0%1$csection .bss%1$cfilename: resb 10%1$ccmd: resb 100%1$c",0
filename_format: db "Sully_%d.s",0
compil_format: db "nasm -f macho64 Sully_%1$d.s -o Sully_%1$d.o && ld -macosx_version_min 10.8 -lSystem Sully_%1$d.o -o Sully_%1$d",0
exec_format: db "./Sully_%d",0
sully_5: db "sully_5.s",0
section .bss
filename: resb 10
cmd: resb 100
