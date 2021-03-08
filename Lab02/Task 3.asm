.model   small ;define small model 
.stack 100h    ;reserves 100h bytes for program
.data
.code

main proc      ;main procedure started here

;printing ? on screen to request output
mov ah,2       ;output at ah
mov dl,'?'     ;ASCII equivalent of ? goes in destination dl
int 21h        ;prints output on the screen
mov dl,0ah     ;moves cursor to start of next line
int 21h        ;termination

;Getting input from user via keyboard
mov ah,1       ;gets input from the user via keyboard
int 21h        ;moves to next line                                                                                                                                                                                                                                                                                                                                                                                                         
mov bl,al      ;moves value of al to bl
mov ah,2       ;displays value of ah
mov dl,0ah     ;moves cursor to start of next line
int 21h        ;termination

;converting lowercase alphabet to uppercase
mov dl,bl      ;moves value stored in bl to dl
sub dl,32      ;Subtracting 32 to get uppercase ASCII equivalent
int 21h        ;moves to next line

mov ah,4ch     ;terminates the program by moving to last line
int 21h        ;moves to next line
main endp      ;ends the function, named "procedure"
end main       ;ends the main program
