.model small    ;define small model 
.stack 100h     ;reserves 100h bytes for program
.data 
.code 

main proc      ;main procedure starts here

mov ah,2       ;requests output
mov dl,'?'     ;moves ? to dl, so that it can be printed
int 21h        ;initiates the output
mov dl,0ah     ;moves cursor to the start of next line
int 21h        ;calls the interrupt handler

mov ah,1       ;requests input
int 21h        ;initiates the input
mov bh,ah      ;moves ah to bh registry

mov ah,2       ;requests output
int 21h        ;initiates output sequence
mov dl,0ah     ;moves cursor to the start of next line
int 21h        ;calls the interrupt handler

mov dl,bh      ;moves bh to dl registry
sub dl,32      ;subtracts 32 from dl directry to get an uppercase equivalent of alphabet
mov ah,2       ;requests output
int 21h        ;initiates the output
mov dl,0ah     ;moves cursor to the start of next line
int 21h        ;calls the interrupt handler

mov ah,4ch     ;terminates the program by moving cursor to the last line
int 21h        ;calls the interrupt handler
 
main endp      ;ends the procedure
end main       ;ends the main program
