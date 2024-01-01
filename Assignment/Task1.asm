[org 0x100]
xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx

mov ax, [a]    
mov bx, [a + 2]
mov cx, [a + 4]
mov dx, [a + 6]

add  ax,word[b] 
add  bx,word[b+2] 
add  cx,word[b+4] 
add  dx,word[b+6] 

mov ax,0x4c00
int 21h

a: dq 0x1234567812345678
b: dq 0x1234567891354846
