.model small
.stack 100h
.data
.code
main proc
mov ah,6
mov al,10
mov bh, 11111111b
mov ch,5
mov cl,5
mov dh,15
mov dl,15
int 10h
mov ah,4ch
int 21h
main endp
end main
