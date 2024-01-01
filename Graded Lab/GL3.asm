[org 0x100]

mov cx,16
mov bx,0x734B

P:

shl bx,1
rcr ax,1

Loop P

mov bx,ax


mov ax,0x4C00
int 21h