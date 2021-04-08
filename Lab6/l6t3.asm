Include irvine32.inc
;TITLE PRINTING 0-9
.model SMALL
.stack 100h
.data
.code 

Main proc

	mov ecx,10
	mov al,48
	L1:	; Label L1 Defined 
	
		call writechar
		call crlf
		inc al		

	loop L1	; Loop calling label 

exit
main endp
end main