[org 0x100]

xor ax,ax
xor bx,bx
xor cx,cx
xor dx,dx


mov ax, 0xB800
mov es, ax
mov ah, 0x0f
mov si, 0
mov di, 320

l1:
mov al, [arr+si]
mov [es:di], ax
add si, 1
add di, 2
cmp si, 12
jnz l1

mov cx, 0xB800
mov es, cx
mov ch, 0x0f
mov si, 0
mov di, 640

l2:
mov cl, [arr1+si]
mov [es:di], cx
add si, 1
add di, 2
cmp si, 12
jnz l2

 
end:
mov ax, 0x4c00
int 0x21

arr: db 'Hello World!'
arr1: db 'dlroWolleH'