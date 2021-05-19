.model small
.stack 100h
.data
.code
main proc
mov ah,09h
mov al,'A'
mov bh, 0h
mov bl, 71h
mov cx, 5
int 10h
mov ah,4ch
int 21h
main endp
end main
