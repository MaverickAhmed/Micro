.model small
.stack 100h
.data
.code
main proc
mov ah,00h
mov al,13h
int 10h
; set the configuration to video mode by using function number
; choose the video mode 320x200 256 color graphics
; executes the configuration
mov ah,4ch
int 21h
main endp
end main
