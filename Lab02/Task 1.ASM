.model small    ;define small model 
.stack 100h     ;reserves 100h bytes for program
.data 
.code 

main proc      ;main procedure starts here
 
mov ah,2       ;moves 2 to ah registry
mov bh,3       ;moves 3 to bh registry
mov ch,0       ;moves 0 to ch registry
mov dh,0       ;moves 0 to dh registry
add ch,ah      ;adds ah to ch registry
add dh,bh      ;adds bh to dh registry 
add ah,bh      ;adds bh to ah registry
add bh,ah      ;adds ah to bh registry

;output commands start here

mov dl,48      ;moves 48 to dl registry so that we can get numbers in ASCII
add dl,ah      ;adding ah into dl registry
mov ah,2       ;getting output 
int 21h        ;calls the interrupt handler
mov dl,0ah     ;moves cursor to next line but same position
int 21h        ;calls the interrupt handler

mov dl,48      ;moves 48 to dl registry so that we can get numbers in ASCII
add dl,bh      ;adding ah into dl registry
mov ah,2       ;getting output 
int 21h        ;calls the interrupt handler
mov dl,0ah     ;moves cursor to next line but same position
int 21h        ;calls the interrupt handler

mov dl,48      ;moves 48 to dl registry so that we can get numbers in ASCII
add dl,ch      ;adding ah into dl registry
mov ah,2       ;getting output 
int 21h        ;calls the interrupt handler
mov dl,0ah     ;moves cursor to next line but same position
int 21h        ;calls the interrupt handler

mov dl,48      ;moves 48 to dl registry so that we can get numbers in ASCII
add dl,dh      ;adding ah into dl registry
mov ah,2       ;getting output 
int 21h        ;calls the interrupt handler
mov dl,0ah     ;moves cursor to next line but same position
int 21h        ;calls the interrupt handler

mov ah,4ch     ;terminates the program by moving cursor to the last line
int 21h        ;calls the interrupt handler
 
main endp      ;ends the procedure
end main       ;ends the main program
