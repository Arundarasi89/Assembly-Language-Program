.model small


.data
n1 dw 0071h
n2 dw 0002h
quo db 1 dup(0)
rem db 1 dup(0)


.code
mov ax,@data
mov ds,ax

mov ax,n1
mov bx,n2
div n2

mov quo,ah
mov rem,al      

mov bl,quo
mov bh, rem

mov ah,4ch
int 21h

end


