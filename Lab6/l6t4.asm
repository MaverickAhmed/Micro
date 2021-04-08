Include irvine32.inc
;TITLE PRINTING A-Z
.model SMALL
.stack 100h
.data
.code 

Main proc

	mov ecx,26
	mov al,65
	L1:	; Label L1 Defined 
	
		call writechar
		call crlf
		inc al		

	loop L1	; Loop calling label 

exit
main endp
end main