; A 8086 program to print Hello World
.model small ;                       
.stack 100h ; 1024 bytes by default, in this case, 100 bytes

.data
string db "hello world","$"



.code
    main proc
    .start      ; or you cna write mov ax, @data, mov ds, ax
    
    mov dx,offset string
    mov ah,09h
    int 21h       
    
    .exit    
    main endp   
 end
