INCLUDE Irvine32.inc

.data
initialAlpha byte "@", 13, 10, 0
prompt byte "Continue printing (y/n?)", 0
charIn byte ?
errMsg byte "Enter (Y) or (N) only", 13, 10, 0
.code
main proc
	start:
		call crlf
		inc initialAlpha
		mov edx, offset initialAlpha
		call WriteString

	top:
		mov edx, offset prompt
		call writeString

		call readChar
		mov charIn, al
		movzx eax,charIn

		call WriteChar
		cmp charIn, "n"
		jz exitProg
		cmp charIn, "y"
		jz start
		mov edx, offset errMsg
		call WriteString
		jmp top

	exitProg:
		exit
		
main endp
end main