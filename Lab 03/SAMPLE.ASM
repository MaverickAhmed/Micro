;TITLE MSG_DISPLAY
.model SMALL
.stack 100h
.data
 
var1 db 49
msg db 'LAB 3$'

.code
main proc

mov ax, @data
mov ds, ax


mov dl, var1
mov ah,2
int 21h
mov dl,0ah
int 21h

lea dx, msg
mov ah,9
int 21h

mov ah,4ch
int 21h

main endp
end main
