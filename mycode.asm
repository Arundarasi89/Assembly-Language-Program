

.model small

.data
num1 db 04h
num2 db 02h


.code

mov ax,@data
mov ds,ax


mov al,num1
mov bl,num2

add al,bl

mov ah,4ch
int 21h


end

