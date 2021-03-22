;TITLE Addition
.model SMALL
.stack 100h
.data
    
    q db ?  ; quotient (single digit)
    r db ?  ; remainder (single digit)
    
.code 
Main proc
    mov AX, @data   ; It moves memory location of @DATA into AX (16-bit) 
    mov DS, AX     ; DS gets initialized as Heap memory to access variables mov ax, 0

    mov ax, 0
    mov ax, 7  ; moving dividend into al
    add ax, 8
    
    mov bl, 10   ; moving divisor into bl to display 2 numbers

    div bl  ; dividing and this will move result of division into AX

    mov q, al   ; moving al into quotient
    add q, 48
    mov r, ah   ; moving ah into remainder
    add r, 48
    
    mov dl, q   ; first displaying quotient digit
    mov ah, 2   ; moving 2 in ah for single character printing 
    int 21h  ; invoking interrupt
    mov dl, r   ; than displaying remainder 
    int 21h
    mov ah, 4ch ; terminating condition 
    int 21h
main endp   
end main
