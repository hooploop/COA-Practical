include irvine32.inc
.586
.model flat, STDCALL

decreasingSeq proto C, 
	num: PTR SDWORD, arrSize: DWORD

.data
commal db ",", 0
count2 byte 0
longest byte 0 
prev SDWORD 0
.code
decreasingSeq proc C,  
	num: PTR SDWORD, arrSize: DWORD

	mov esi, num
	mov edi, num
	mov ecx, arrSize

	l1: 
		add edi, type num
		mov eax, [esi]
		cmp eax, [edi]
		jg display
		jl cont
		display:
			inc count2
			inc longest
			mov al, longest
			.if count2 < al
				jmp contloop
			.endif
			mov eax, [esi]

			cmp prev, eax
			je disp
			call writeint
			call crlf
			
			disp:
			mov eax, [edi]
			mov prev, eax
			
			mov eax, [edi]
			call writeint
			call crlf
			jmp contloop

		cont:
			mov count2, 0

		contloop:
			add esi, type num
		loop l1
	ret   
decreasingSeq ENDP
END
