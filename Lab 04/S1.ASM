;TITLE 8-BIT MULTIPLICATION
.model SMALL
.stack 100h
.data

u db ?	; unit’s digit
t db ?	; ten’s digit
.code 
Main proc
mov AX, @data	; It moves memory location of @DATA into AX (16-bit) mov DS, AX		; DS gets initialized as Heap memory to access variables mov AX, 0
mov al, 3	; moving multiplicand into al
mov bl, 2	; moving multiplier into bl
mul bl
aam
mov u,al
mov t,ah
mov dl, t	; first displaying ten’s digit
mov ah, 2	; moving 2 in ah for single character printing int 21h	; invoking interrupt
mov dl, u	; than displaying unit’s digit int 21h
mov ah, 4ch	; terminating condition int 21h
main endp 
end main
 
