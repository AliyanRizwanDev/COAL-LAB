[org 0x100]

mov ax, [C-2]
sub ax, [C+4]

mov bx, [C-2]
add bx, [C-1]
sub bx, [C]

mov cx, [C+4]
sub cx, [C-1]

mov dx, [C+4]
add dx, cx

add bx, dx
sub ax, bx

mov [C+4], ax


mov ax, 0x4c00
int 21h

A: db 12
B: db 13
C: dw 14 
D: dw 25
E: db 16