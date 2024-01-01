[org 0x100]
mov ax, [a]    
mov bx, [a + 2]
mov cx, [a + 4]
mov dx, [a + 6]
start: 
shr ax,1
rcr bx,1
rcr cx,1
rcr dx,1
mov word[a],ax    
mov word[a + 2],bx
mov word[a + 4],cx
mov word[a + 6],dx
counter:
cmp byte[count],6
jne inc
jmp end

inc:
add byte[count],1
jmp start

end:
mov ax,0x4c00
int 21h

a: dq 492cH
count:db 0x1