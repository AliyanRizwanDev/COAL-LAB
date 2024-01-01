[org 0x100]

jup start 
strl db 'HELLO WORLD'

start:
mov ax,0xb800;
Mov es, ax;
mov di, 500
mov cx,11
mov si, strl;
mov ah, 0x1A; 
l1:
Mov al, [si];
Inc si;
mov[es:di],ax
Add di, 2;
loop l1

mov cx, 2000;
mov,0x0720;
mov di,0

12:
Mov [es:di],ax; 
Add di, 2

loop l2

mov ax,0x4c00

int 21h