[org 0x100]

jmp start

datal db 'Abcd,edfg, ijkl, mnopqr',0 
data2: times 21 db 0

start:

mov si, datal

ov di, data2

11:

mov al, [si] 
mov [di], al
inc si
inc di
cmp al,0
jne 11

mov ax, 0x4000

int 21h