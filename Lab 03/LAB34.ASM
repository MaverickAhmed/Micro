;TITLE MSG_DISPLAY
.model SMALL
.stack 100h
.data
 
msgg db 'Input Number 1:$'
msg db 'Input Number 2:$'
out1 db 'Sum$'
out2 db 'Difference$'
.code
main proc

mov ax, @data
mov ds, ax

;Enter Number 1
lea dx, msgg
mov ah,9
int 21h


;Ask for Input 1
mov ah,1
int 21h
add al,48
mov bl,ah
int 21h

mov ah,2
mov dl,0ah
int 21h

;Enter Number 2
lea dx, msg
mov ah,9
int 21h

;Ask for Input 2
mov ah,1
int 21h
add al,48
mov ch,al
int 21h

mov ah,2
mov dl,0ah
int 21h

;Print Sum
lea dx, out1
mov ah,9
int 21h

mov dh,bh
add bl,ch
mov dh,bh
mov ah,2
int 21h

mov ah,2
mov dl,0ah
int 21h

;Print Difference
lea dx, out2
mov ah,9
int 21h

sub dl,ch
mov dh,bh
mov ah,2
int 21h

mov ah,2
mov dl,0ah
int 21h


mov ah,4ch
int 21h

main endp
end main
