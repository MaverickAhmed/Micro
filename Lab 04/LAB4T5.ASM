;TITLE * /

.model SMALL
.stack 100h
.data
    
    d1 dw ?  ; digit1 (single digit)
    d2 dw ?  ; digit2 (single digit)
    d11 db ?  ; digit11 (single digit)
    d22 db ?  ; digit22 (single digit)
    d3 dw ?  ; digit3 (single digit)	
    d4 dw ?  ; digit4 (single digit)
    d33 db ?  ; digit33 (single digit)
    d44 db ?  ; digit44 (single digit)	
    df1 db ?  ; digit3 (single digit)	
    dl1 db ?  ; digit4 (single digit)
    msg1 db 'Product : $'
    msg2 db 'Division : $'
    
.code 
Main proc
    mov AX, @data   ; It moves memory location of @DATA into AX (16-bit) 
    mov DS, AX     ; DS gets initialized as Heap memory to access variables mov ax, 0



    ;multiply
	mov ax,0
	mov dx, 0
    	mov al, 89  
    	mov bl, 12
    	mul bl

    ;Store as digits

	mov bx, 1000
	div bx
	mov d1, ax
	mov ax, dx
	
	mov dx,0
	mov bx, 100
	div bx
	mov d2, ax
	mov ax, dx

	mov dx,0
	mov bx, 10
	div bx
	mov d3, ax
	mov d4, dx

	
;print product
    	mov ah, 9
    	mov dx, offset msg1
    	int 21h

    	mov ah, 2
    	mov dx, d1
    	add dx, 48
    	int 21h
    	mov dx, d2
    	add dx, 48
    	int 21h   
    	mov dx, d3
    	add dx, 48
    	int 21h 
    	mov dx, d4
    	add dx, 48
    	int 21h 
    	mov dl, 0ah
    	int 21h
    	mov dl, 0dh
    	int 21h



;divide
	mov ax,0
    	mov al, 99  
    	mov bl, 2
    	div bl
    


    ;Store as digits

	mov df1, al
	mov dl1, ah
	mov ax,0
	mov al, dl1
	mov bl, 10
	div bl
	mov d33, al
	mov d44, ah

	mov ax,0	
	mov al, df1
	mov bl, 10
	div bl
	mov d11, al
	mov d22, ah


	
;print divide
    	mov ah, 9
    	mov dx, offset msg2
    	int 21h

    	mov ah, 2
    	mov dl, d11
    	add dl, 48
    	int 21h
    	mov dl, d22
    	add dl, 48
    	int 21h   
    	mov dl, '.'
    	int 21h  
    	mov dl, d33
    	add dl, 48
    	int 21h 
    	mov dl, d44
    	add dl, 48
    	int 21h 
    	mov dl, 0ah
    	int 21h
    	mov dl, 0dh
    	int 21h


    mov ah, 4ch ; terminating condition 
    int 21h
main endp   
end main

