;TITLE ARRAY ACCESSING AND PRINTING USING LOOP
.model SMALL
.stack 100h
.data
	Array1 db 1,2,3,4
	Array2 db 2,3,4,5
	Array3 db 4 dup(?)
.code 
Main proc
	
	; accessing address of data in code
	mov AX, @data		; It moves memory location of @DATA into AX (16-bit) 
	mov DS, AX		; DS gets initialized as Heap memory to access variables
	
	; Adding Array1 and Array2 to store in Array3
	mov SI, offset Array1	; offset holds the beginning address of Array1 
	mov DI, offset Array2
	mov BX, offset Array3
	mov cx, 4		; loop to run 4 times

	L1:
	mov DX , [SI]		;moving value at SI address into DX first element of array 
	add DX , [DI]
	add DX , 48
	mov [BX] , DX
	;mov ah , 2
	;int 21h 
	inc SI 
	inc DI
	inc BX
	loop L1

	;print Array3
	mov cx, 4	; loop to run 4 times
	L2:
	mov DX , [BX-4]	;moving value at BX address into DX first element of array 
	mov ah , 2
	int 21h 
	inc BX 
	loop L2


	; terminating
	mov ah, 4ch 
	int 21h
main endp 
end main
