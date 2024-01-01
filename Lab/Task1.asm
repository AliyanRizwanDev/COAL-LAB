[org 0x100]

mov ax,0xb800
mov es, ax
mov di,5

mov ah,0x64
mov al,0x41

mov [es:di],ax

mov ax,0x4c00
int 21h