;TITLE PRINTING ASTERIC
.model SMALL
.stack 100h
.data
.code 

Main proc

mov cx,5
mov dl,65
L1:	; Label L1 Defined 
mov ah,2 
int 21h
inc dl
loop L1	; Loop calling label mov ah,4ch
mov ah,4ch
int 21h 
main endp
end main
