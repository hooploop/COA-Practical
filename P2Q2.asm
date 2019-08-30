INCLUDE Irvine32.inc 

.data
list dword 19900,3000,50000,70000,900

.code
main PROC
	mov esi, offset list
	mov ecx, lengthof list

	L1: mov eax, dword ptr [esi]
		call WriteInt
		call Crlf
		add esi, type list
		loop L1

	exit
main ENDP
END main