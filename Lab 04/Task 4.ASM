;TITLE Add Sub 3 digit

.model SMALL
.stack 100h
.data
    
    d1 db ?  ; digit1 (single digit)
    d2 db ?  ; digit2 (single digit)
    d3 db ?  ; digit3 (single digit)	
    d4 db ?  ; digit4 (single digit)	

    msg1 db 'Sum : $'
    msg2 db 'Difference : $'
    
.code 
Main proc
    mov AX, @data   ; It moves memory location of @DATA into AX (16-bit) 
    mov DS, AX     ; DS gets initialized as Heap memory to access variables mov ax, 0

    ;add
    mov ax, 0
    mov ax, 370  ; moving dividend into al
    add ax, 144
    

    ;Store as digits

        mov bl, 10   ; moving divisor into bl to display 2 numbers

	div bl  ; dividing and this will move result of division into AX
        
        mov d4, ah   ; store 4th digit
	mov ah, 0   ; storing q in ax for further division
 
        div bl ; divides 2 remaining digits by 10

        mov d3, ah   ; store 3rd digit
	mov ah, 0   ; storing q in ax for further division
 
        div bl ; divides 2 remaining digits by 10
    
        mov d1, al   ; stores 1st digit
        mov d2, ah   ; store 2nd digit
  
    ;print sum

    	mov ah, 9
    	mov dx, offset msg1
    	int 21h
    	mov ah, 2
    	mov dl, d1
    	add dl, 48
    	int 21h
    	mov dl, d2
    	add dl, 48
    	int 21h   
    	mov dl, d3
    	add dl, 48
    	int 21h 
    	mov dl, d4
    	add dl, 48
    	int 21h 
    	mov dl, 0ah
    	int 21h
    	mov dl, 0dh
    	int 21h


    ;sub
    mov ax, 0
    mov ax, 70  ; moving dividend into al
    sub ax, 44
    

    ;Store as digits

        mov bl, 10   ; moving divisor into bl to display 2 numbers

	div bl  ; dividing and this will move result of division into AX
        
        mov d4, ah   ; store 4th digit
	mov ah, 0   ; storing q in ax for further division
 
        div bl ; divides 2 remaining digits by 10

        mov d3, ah   ; store 3rd digit
	mov ah, 0   ; storing q in ax for further division
 
        div bl ; divides 2 remaining digits by 10
    
        mov d1, al   ; stores 1st digit
        mov d2, ah   ; store 2nd digit
  
    ;print suub

    	mov ah, 9
    	mov dx, offset msg2
    	int 21h
    	mov ah, 2
    	mov dl, d1
    	add dl, 48
    	int 21h
    	mov dl, d2
    	add dl, 48
    	int 21h   
    	mov dl, d3
    	add dl, 48
    	int 21h 
    	mov dl, d4
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

