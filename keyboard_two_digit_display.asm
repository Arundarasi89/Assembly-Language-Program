;Accept a 2 digit Hex number and Display the same.

.model small                    ;defines memory model,

.data                           ;Declare Data segment
n1 db 0h
n2 db 0h

.code                           ;Declare Code segment
mov ax,@data
mov ds,ax

call accept                     ;Procedure accept is called

call disp                       ; Procedure display is called
                                ; Main program ends here        

mov ah,4ch                      ; Program terminated       
int 21h

accept proc near                ;Declare accept procedure for 2 digit
                                ;Tens place digit accept
mov ah,01h
int 21h
cmp al,3Ah
jc d1
sub al,07h
d1: and al,0Fh
mov cl,04h
ror al,cl
mov n1,al

mov ah,01h                      ;Units place digit accept
int 21h
cmp al, 3Ah
jc d2
sub al,07h
d2: and al,0Fh
mov n2,al

mov bl,n1
add al,bl

mov n2,al                       ;2 digit number stored in n2
ret
endp

disp proc near                  ;declare display procedure

mov al,n2                       ;Display Tens place digit
and al,0F0h
mov cl,04h
rol al,cl
cmp al, 0Ah
jc d3
add al,07h
d3: add al,30h
mov dl,al
mov ah,02h
int 21h

mov al,n2                       ;Display Units place digit
and al,0Fh
cmp al, 0Ah
jc d4
add al,07h
d4: add al,30h
mov dl,al
mov ah,02h
int 21h
ret
endp

end                             ;End of the program 
