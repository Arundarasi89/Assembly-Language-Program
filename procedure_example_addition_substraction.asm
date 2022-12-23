;Basic 8086 Assembly Language Program.

.model small                    ;defines memory model,

.data                           ;Declare Data segment
n1 db 0h                        ;variable declaration
n2 db 0h

.code                           ;Declare Code segment          
.start  

call addition
call substraction
                   ;because we want to use variables declared  

addition proc
                              ;in Data segment (i.e. - .data)                                        

mov al,04h
mov n1,02h
add al,n1
             
ret
addition endp        

substraction proc
                              ;in Data segment (i.e. - .data)                                        

mov al,04h
mov n1,02h
sub al,n1
mov ah,4ch
int 21h              
ret
substraction endp   

end                             ;End of the program 
