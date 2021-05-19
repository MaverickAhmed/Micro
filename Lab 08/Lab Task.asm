
.model small	;setting the model size as small
.stack 100h	;allocating 100 bytes of stack segment
.data		;variable declaration goes here
.code 		;main code goes here

main proc	;main procedure initiates

mov ah,06h	;scroll window up configuration selected
mov al,0	;scrolling up by entire window
mov bh,10011111b;choosing 'Blue' background and White foreground
mov ch,5	;defining upper left row
mov cl,5	;defining upper left column
mov dh,15	;defining lower right row
mov dl,30	;defining lower right column
int 10h		;executes the graphics

mov bh,01110000b;choosing 'White' background and 'Black' foreground 
mov ch,7	;defining upper left row
mov cl,8	;defining upper left column
mov dh,13	;defining lower right row
mov dl,27	;defining lower right column
int 10h		;executes the graphics

mov ah,02h	;setting cursor position
mov dh,7	;lower right row
mov dl,17	;lower right column
mov bh,0h	;video page 0
int 10h		;executes the graphics

;For PRINTING 12

mov ah,09h	;set configuration to write character and attribute at cursor position 
mov al, '1'	;moving ASCII of '1' into the al register
mov bh, 0h	;video page 0
mov bl, 70h	;attribute (black on light gray) 
mov cx,1	;repetition
int 10h		;executes the graphics
mov ah,02h	;setting cursor position
mov dh,7	;lower right row
mov dl,18	;lower right column
mov bh,0h	;video page 0
int 10h		;executes the configuration
mov ah,09h	;set configuration to write character and attribute at cursor position
mov al,'2'	;moves the ASCII of 2 to al
mov bh,0h	;video page 0
mov bl, 70h	;attribute (black on light gray)
mov cx,1	;repetition
int 10h		;executes the graphics

;FOR PRINTING 9

mov ah,02h	;setting cursor position
mov dh,10	;lower right row
mov dl,9	;lower right column
mov bh,0h	;video page 0
int 10h		;executes the configuration
mov ah,09h	;set configuration to write character and attribute at cursor position
mov al,'9'	;moves the ASCII of 9 to al
mov bh,0h	;video page 0
mov bl, 70h	;attribute (black on light gray)
mov cx,1	;repetition
int 10h		;executes the graphics

;FOR PRINTING 3

mov ah,02h	;setting cursor position
mov dh,10	;lower right row
mov dl,26	;lower right column
mov bh,0h	;video page 0
int 10h		;executes the configuration
mov ah,09h	;set configuration to write character and attribute at cursor position
mov al,'3'	;moves ASCII of 3 to al
mov bh,0h	;video page 0
mov bl, 70h	;attribute (black on light gray)
mov cx,1	;repetition
int 10h		;executes the graphics

;FOR PRINTING 6

mov ah,02h	;setting cursor position
mov dh,13	;lower right row
mov dl,17	;lower right column
mov bh,0h	;video page 0
int 10h		;executes the configuration
mov ah,09h	;set configuration to write character and attribute at cursor position
mov al,'6'	;moves ASCII of 6 to al
mov bh,0h	;video page 0
mov bl, 70h	;attribute (black on light gray)
mov cx,1	;repetition
int 10h		;executes the graphics

mov ah,02h	;setting cursor position
mov dh,20	;lower right row
mov dl,5	;lower right column
mov bh,0h	;video page 0
int 10h		;executes the graphics

mov ah,4ch	 
int 21h         ;interrupts the program

main endp 	;ending the procedure
end main	;end main program	


