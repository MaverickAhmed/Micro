;TITLE encrypt decypt
.model SMALL
.stack 100h
.data
	msg1 db 'Input Alphabet to encrypt : $'
	msg2 db 'Input Alphabet to decrypt : $'
	msg3 db 'encrypted : $'
	msg4 db 'decrypted : $'	
.code 
	Main proc

	mov AX, @data	; It moves memory location of @DATA into AX (16-bit) 
	mov DS, AX	; DS gets initialized as Heap memory to access variables
	
	mov DX, offset msg1 ;Display 1st msg and get alphabet to encrypt
	mov ah , 9
	int 21h

	mov ah, 1
	int 21h
	mov bl, al
	add bl, 3

	mov ah, 2
	mov dl, 0ah
	int 21h
	mov dl, 0dh
	int 21h

	mov DX, offset msg3 ;Display 3rd msg and display encypted
	mov ah , 9
	int 21h
	mov ah, 2
	mov dl, bl
	int 21h
	mov dl, 0ah
	int 21h
	mov dl, 0dh
	int 21h



	mov DX, offset msg2	;Display 2nd msg and get alphabet to decrypt
	mov ah , 9
	int 21h

	mov ah, 1
	int 21h
	mov cl, al
	sub cl, 3

	mov ah, 2
	mov dl, 0ah
	int 21h
	mov dl, 0dh
	int 21h

	mov DX, offset msg4 ;Display 4th msg and display decrypted
	mov ah , 9
	int 21h
	mov ah, 2
	mov dl, cl
	int 21h
	mov dl, 0ah
	int 21h
	mov dl, 0dh
	int 21h


        mov ah,4ch
        int 21h



main endp
end main
