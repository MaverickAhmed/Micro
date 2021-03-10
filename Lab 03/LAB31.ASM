;TITLE MSG_DISPLAY
.model SMALL
.stack 100h
.data
 
msgg db 'HELLO$'
msg db 'WORLD!$'

.code
main proc

mov ax, @data
mov ds, ax


lea dx, msgg
mov ah,9
int 21h

mov ah,2
mov dx,0ah
int 21h

lea dx, msg
mov ah,9
int 21h


mov ah,4ch
int 21h

main endp
end main
