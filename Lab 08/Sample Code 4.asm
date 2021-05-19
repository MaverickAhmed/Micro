.model small
.stack 100h
.data
.code
main proc
mov ah,09h   ; set configuration to write character and attribute at cursor position
mov al,'A'   ; moving ASCII of A into al register
mov bh, 0h
mov bl, 11111001b ; attribute (blue on light gray)
mov cx, 5         ; repetition
int 10h           ; executes the configuration
mov ah,4ch
int 21h
main endp
end main
