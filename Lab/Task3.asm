[org 0x100]
jmp start
strl db 'I am a student of university of central punjab',0
start:
mov ax, Oxb800
mov es,ax
mov di, 0;
mov cx, 46;
mov si, strl
mov ah,0x1A

label:
Mov al, [si];
Inc si
Mov [es:di], ax;
Add di, 2;
cmp cx, 30 
jne skip


change_blinking:

mov ah,0x9A 
skip:

loop label

mov ax, 0x4000

int 21h