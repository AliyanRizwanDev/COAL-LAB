[org 0x100]
mov ax,0xb800
mov es,ax

mov ah,0x7A
mov al,0x41

mov[es:0],ax

mov bh,0x2c
mov bl,0x42

mov [es:160],bx

mov ax,0x4c00
int 21h