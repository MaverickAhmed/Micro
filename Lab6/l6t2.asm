Include irvine32.inc
;TITLE MSG_DISPLAY
.model SMALL
.stack 100h
.data
 
	msg1 db 'Input Number 1: ',0
	msg2 db 'Input Number 2: ',0
	out1 db 'Sum: ',0
	out2 db 'Difference: ',0
.code
main proc

	;Enter Number 1
	lea edx, msg1
	call writestring

	;Ask for Input 1
	call readchar
	call writechar
	mov bl, al

	call crlf

	;Enter Number 2
	lea dx, msg2	
	call writestring

	;Ask for Input 2
	call readchar
	call writechar
	mov cl, al

	call crlf

	;Print Sum
	lea edx, out1
	call writestring
	mov al, bl
	add al, cl
	sub al, 48
	call writechar

	call crlf

	;Print Difference
	lea edx, out2
	call writestring
	mov al, bl
	sub al, cl
	add al, 48
	call writechar

	call crlf


exit

main endp
end main