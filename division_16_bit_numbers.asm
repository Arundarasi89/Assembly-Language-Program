data segment
a dw 4444h
b dw 0002h
c dw ?
data ends
 
code segment

.start

mov ax,a
mov bx,b
div bx
mov c,ax
int 3

end