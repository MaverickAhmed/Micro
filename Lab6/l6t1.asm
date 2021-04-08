;TITLE Hello World!
Include irvine32.inc

.model small ;define small model

.stack 100h

.data
	msg1 db 'HELLO',0
	msg2 db 'WORLD!',0
.code

main proc

	lea edx, msg1
	call writestring

	call crlf

	lea edx, msg2
	call writestring


	call crlf

	call dumpregs


main endp
end main