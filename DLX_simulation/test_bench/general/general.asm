l1: 
add r9,r20,r10			; 20 + 10 = 30
addi r1,r2,#-5			; 2 + (-5) = -3
and r9,r3,r10			; 0011 & 1010 = 0010 = 2
andi r20,r9,#8			; 0010 & 1000 = 0000 = 0
lw r19, 63(r8)			; r19 = mem(63+8) = mem(71) = 0
nop
ori r5, r3, #342		; 101010110 | 000000011 = 101010111 = 343
sge r1,r2,r10			; 2 !> 10 => 0
sgei r9,r20,#6			; 2 !> 6 => 0
sle r13,r2,r4			; 2 < 4 => 1
slei r1,r3,#-4			; 3 !< -4 => 0
sll r1,r2,r3			; 2 << 3 = 16
slli r4,r1,#5			; 16 << 5 = 512
sne r1,r2,r3			; 2 != 3 => 1
snei r3,r5,#4			; 343 != 4 => 1
srl r5,r7,r8			; 7 >> 8 = 0
srli r7,r5,#2			; 0 >> 2 = 0
sub r6,r12,r15			; 12 - 15 = -3
subi r7,r9,#-30			; 0 - (-30) = 30
xor r6,r12,r15			; 1100 ^ 1111 = 0011 = 3
xori r6,r12,#1			; 1100 ^ 0001 = 1101 = 13
addu r5,r3,r4			; 1 + 512 = 513
addui r1,r5,#250		; 513 + 250 = 763
lb r1,3-4(r2)			; r1 = mem(-1+2) mem(1) = 0
lbu r3,5-4(r4)			; r3 = mem(1+512) mem(513) = 0
lhi r1,#-40			; r1 = -40[31:16] & x"0000" = -2621440	
lhu r2,32(r6)			; r2 = mem(13+32) = mem(45) = 0
mult r5,r2,r4			; r5 = 0 * 512 = 0
sb 41(r3), r2			; mem(41) = 512
seq r13,r1,r4			; -2621440 != 0 => 0
seqi r29,r20,#1			; 0 != 1 => 0
sgeu r9,r20,r10			; 0 !> 10 => 0
sgeui r7,r8,#23			; 8 !> 23 => 0
sgt r1,r2,r3			; 0 !> 0 => 0
sgti r4,r1,#15			; 0 !> 15 => 0
sgtu r5,r6,r3			; 16 > 3 => 1	
sgtui r15,r3,#8			; 0 !> 8 => 0
slt r5,r7,r8			; 0 < 8 => 1
slti r9,r10,#30			; 10 < 30 => 1
sltu r17,r13,r14		; 0 < 14 => 1
sltui r5,r7,#13			; 0 < 13 => 1
sra r1,r2,r3			; 0 >> 0 = 0
srai r25,r26,#10		; 66 >> 10 = 0 (windowed, globals at the bottom)
subu r13,r2,r4			; 0 - 0 = 0
subui r5,r18,#4			; 18 -4 = 14
or r5, r3, r4			; 0 | 0 = 0
sleu r13,r2,r9			; 0 < 1 => 1
sleui r22,r30,#30		; 70 !<= 30 => 0 (windowed, globals at the bottom)
j l1
