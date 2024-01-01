
[org 0x0100] 

mov bx ,[multiplier]
mov cx ,[multiplier+2]
mov dx ,[multiplier+4]
checkbit: 
shr dx, 1 
rcr cx, 1
rcr bx, 1       ; move right most bit in carry 
jnc skip 					; skip addition if bit is zero 
 mov ax, [multiplicand] 
 add [result], ax 				; add less significant word 
 mov ax, [multiplicand+2] 
 adc [result+2], ax
 mov ax, [multiplicand+4] 
 adc [result+4], ax
adc  ; add more significant word 
skip: 
shl word [multiplicand], 1 
 rcl word [multiplicand+2], 1
rcl word [multiplicand+4], 1 ; shift multiplicand left 
 dec byte[count] 							; decrement bit count 
 jnz checkbit 						; repeat if bits left 
 mov ax, 0x4c00 						; terminate program 
 int 0x21 
 
 multiplicand: dd 21301	 ; 16bit multiplicand 32bit space 
multiplier: dd 1501		 ; 16bit multiplier 
result: dq 0 			
count : db 32