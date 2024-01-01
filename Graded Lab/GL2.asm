[org 0x100]
mov bx ,a 
mov ax,[bx];
l1:
add ax,[bx]
dec byte [a]
jnz l1
mov bx,b
mov dx,[bx]
l2:
add dx,[bx]
dec byte [b]
jnz l2
add ax,dx
mov [e],ax


mov ax,0x4c00
int 21h

a:db 12
b:db 13
e:db 0



