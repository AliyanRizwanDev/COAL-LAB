[org 0x100]

 

jmp start

 

array: db 'Hello World!'

 

start:
mov ax, 0xb800
mov es, ax
mov ah, 0x0f
mov si, 0
mov di, 320

 

l1:
mov al, [array+si]
mov [es:di], ax
add si, 1
add di, 2
cmp si, 12
jne l1

 

mov ax, 0x4c00
int 21h