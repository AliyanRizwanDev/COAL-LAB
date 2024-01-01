[org 0x100]
mov ax,[num]
mov bx,0
mov dx,0
jump Label1
L1:
   inc cx
   add bx,2
   cmp bx,0xFFFF
   jmp skip2
   
Label1:
       cmp ax,[cs:bx]
	   jl L1
	   add bx,2
	   cmp bx,0xFFFF
	   jnz Label1
	   jmp skip2
	   
L2:
   inc dx
   add bx,2
   cmp bx,0xFFFF
   jz skip3
   jnz Label2
skip2:
      mov bx,0
Label2:
       cmp ax,[ds:bx]
		jl L2
		add bx,2
		cmp bx,0xFFFF
		jnz Label2
		jmp skip3
L3:
   cmp ax,[ss:bx]
   jl L3
   add bx,2
   cmp bx,0xFFFF
   jnz Label2
skip4:
      mov ax,0x4c00
      int 21h

num db: 0009  
	   
   
   