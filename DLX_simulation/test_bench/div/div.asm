addi r1, r0, 81			; r1 = 81
addi r2, r0, 9			; r2 = 9
xor r3, r3, r3			; r3 = 0
divide:		
	slt r5, r1, r2		; while r1 > r2, this equals 1
	bnez r5, finish		; when goes to 0, dividend is smaller than divisor, so division ends
	sub r1, r1, r2		; r1 = r1 - r2
	addi r3, r3, 1		; r3 = r3 + 1 (increment quotient)
	j divide
finish:
add r4, r0, r1			; r4 = remainder

