.model   small
.stack 100h 
.data
.code

main proc      ;main procedure started here

mov ah,2       ;output at ah
mov dl,'?'     ;ASCII equivalent of ? goes in destination dl
int 21h        ;prints output on the screen
mov ah,1       ;gets input from the user via keyboard
int 21h        ;moves to next line                                                                                                                                                                                                                                                                                                                                                                                                         
mov bl,al      ;moves value of al to bl
mov ah,2       ;displays value of ah
mov dl,0ah     ;moves cursor to next line but same position
int 21h        ;termination
mov dl,0dh     ;moves cursor to the start of same line
int 21h        ;termination
mov dl,bl      ;moves value stored in bl to dl
int 21h        ;moves to next line
mov ah,4ch     ;terminates the program by moving to last line
int 21h        ;moves to next line
main endp      ;ends the function, named "procedure"
end main       ;ends the main program

