INCLUDE Irvine32.inc

.data
fib dword 1,1,28 dup(0)

.code
main proc
	mov esi, OFFSET fib
	mov edi, OFFSET fib+4
	mov ecx, 30
	mov eax, 0

	l1:
		mov eax, [esi]
		call WriteInt
		call Crlf
		add eax, [edi]
		add esi, 4
		add edi, 4
		mov [edi], eax
	loop l1

	exit
main endp
end main