.model small    ;define small model 
.stack 100h     ;reserves 100h bytes for program
.data 
.code 

main proc      ;main procedure starts here
 
mov ah,2     ;1st operation 

mov dl,48     ; moving 48 to register dl, so that we get output in ASCII numbers
add dl,ah     ; adding ah into dl
mov ah,2      ; getting output
int 21h       ; calls the interrupt handler
mov dl,0ah    ; moves cursor to the start of next line
int 21h       ; interrupts the handler

mov bh,3     ;2nd operation

mov dl,48     ; moving 48 to register dl, so that we get output in ASCII numbers
add dl,bh     ; adding bh into dl
mov ah,2      ; getting output
int 21h       ; calls the interrupt handler
mov dl,0ah    ; moves cursor to the start of next line
int 21h       ; calls the interrupt handler

mov ch,0     ;3rd operation

mov dl,48     ; moving 48 to register dl, so that we get output in ASCII numbers
add dl,ch     ; adding ch into dl
mov ah,2      ; getting output
int 21h       ; calls the interrupt handler
mov dl,0ah    ; moves cursor to the start of next line
int 21h       ; calls the interrupt handler

mov dh,0     ;4th operation

mov dl,48     ; moving 48 to register dl, so that we get output in ASCII numbers
add dl,dh     ; adding dh into dl
mov ah,2      ; getting output
int 21h       ; calls the interrupt handler
mov dl,0ah    ; moves cursor to the start of next line
int 21h       ; calls the interrupt handler

add ch,ah    ;5th operation

mov dl,48     ; moving 48 to register dl, so that we get output in ASCII numbers
add dl,ch     ; adding ch into dl 
mov ah,2      ; getting output
int 21h       ; calls the interrupt handler
mov dl,0ah    ; moves cursor to the start of next line
int 21h       ; calls the interrupt handler
 
add dh,bh    ;6th operation

mov dl,48     ; moving 48 to register dl, so that we get output in ASCII numbers
add dl,dh     ; adding dh into dl
mov ah,2      ; getting output
int 21h       ; calls the interrupt handler
mov dl,0ah    ; moves cursor to the start of next line
int 21h       ; calls the interrupt handler
 
add ah,bh    ;7th operation

mov dl,48     ; moving 48 to register dl, so that we get output in ASCII numbers
add dl,ah     ; adding ah into dl
mov ch,ah     ; moving ah in ch, so that we can preserve the value of this summation for next output
mov ah,2      ; getting output
int 21h       ; calls the interrupt handler
mov dl,0ah    ; moves cursor to the start of next line
int 21h       ; calls the interrupt handler

mov ah,ch     ; moving ch to ah
add bh,ah     ;8th operation 
mov dl,48     ; moving 48 to register dl, so that we get output in ASCII numbers
add dl,bh     ; adding bh into dl
mov ah,2      ; getting output
int 21h       ; calls the interrupt handlers
mov dl,0ah    ; moves cursor to the start of next line
int 21h       ; calls the interrupt handler
 
mov ah,4ch     
int 21h       ;calls the interrupt handler
 
main endp     ;ends the procedure
end main      ;ends the main program
