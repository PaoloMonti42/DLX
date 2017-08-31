addi r1, r0, 42			; r1 = 42
addi r2, r0, 0xAAAAAAAA		; register stores FFFFAAAA, which is AAAA (max 16 bits in the imm fields) extended
or r3, r1, r2			; 42 = 0101010b
addi r1, r0, 2			; r1 = 2
sll r4, r3, r1			; r4 = r3 * 2
slli r5, r3, 2			; r5 = r3 * 2
srl r6, r5, r1			; r6 = r5 / 4 (not equal to r3 because of leading 0s
srli r7, r4, 2			; r7 = r4 / 4 (same)
;r6, r7 must be equal	
addi r2, r0, 0xF0000000		; only 0000 fits in the immediate field, so r2 = r0 + 0 	
ori r3, r0, 0xF0F0F0F0		; only F0F0 fits in the immediate field, so r3 = r0 or FFFFF0F0 (extended)
addi r1, r0, 5			; r1 = 5
sra r8, r3, r1			; r8 = r3 / 32
srai r9, r3, 5			; r9 = r3 / 32 
