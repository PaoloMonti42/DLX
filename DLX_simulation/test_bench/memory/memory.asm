addi r1,r0,#15		; r1 = 15
addi r2,r0,#-7		; r2 = -7
sw 1(r0),r1		; mem(1) = 15 (+15 is always +15 since it has less than 8 significant bits)
sb 1(r1),r2		; 000...000 11111001 = 249 => mem(16)
lw r3,1(r0)		; r3 = mem(1) = 15
lw r4,1(r1)		; r4 = mem(16) = 249
lb r5,1(r0)		; r3 = mem(1) = 15 
lb r6,1(r1)		; 111...111 11111001 = -7
lbu r7,1(r0)		; r7 = 15
lbu r8,1(r1)		; -7 + 24 0s =  000...00011111001 = 249
lhu r9,1(r0)		; r9 = 15
lhu r10,1(r1)		; 16 0s + 8 0s + -7 = 000...000 00000000 11111001 = 249

