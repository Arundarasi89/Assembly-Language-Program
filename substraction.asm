;Basic 8086 Assembly Language Program.

.model small                    ;defines memory model,

.data                           ;Declare Data segment
n1 db 0h                        ;variable declaration
n2 db 0h

.code                           ;Declare Code segment
.start                     ;because we want to use variables declared                                ;in Data segment (i.e. - .data)                                        

mov al,04h
mov n1,02h
add al,n1

mov ah,4ch                      ;Program terminated       
int 21h
end                             ;End of the program 
