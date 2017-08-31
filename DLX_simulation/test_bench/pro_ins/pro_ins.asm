addi r1, r0, #16384  		; r1 = 16384
addi r2, r0, #16384		; r2 = 16384
nop
nop
nop
nop
addu r3, r2, r1			; r3 = 16384 + 16384 = 32768
nop
nop
nop
nop
addui r4, r3, #1		; r4 = 32768 + 1 = 32769	
addi r5, r0, #3			; r5 = 3
addi r6, r0, #-4		; r6 = -4
nop
nop
nop
nop
mult r7, r5, r6			; r7 = 3 * (-4) = -12
addi r8, r0, #15		; r8 = 15
addi r9, r0, #15		; r9 = 15
nop
nop
nop
nop
seq r10, r9, r8			; 15 = 15 => r10 = 1
seqi r11, r9, #15		; 15 = 15 => r11 = 1
sgeu r12, r1, r9		; 16384 >= 15 => r12 = 1
sgeui r13, r9, #10		; 15 >= 10 => r13 = 1
sgt r14, r1, r9			; 16384 > 15 => r14 = 1
sgti r15, r9, #10		; 15 > 10 => r15 = 1
addi r1, r0, #16385		; r1 = 16385
addi r2, r0, #16384		; r2 = 16384
nop
nop
nop
nop
sgtu r16, r1, r2		; 16385 > 16384 => r16 = 1
sgtui r17, r1, #16380		; 16385 > 16380 => r17 = 1
slt r18, r9, r1			; 15 < 16385 => r18 = 1
slti r19, r9, #500		; 15 < 500 => r19 = 1
sltu r20, r2, r1		; 16384 < 16385 => r20 = 1
sltui r21, r1, #16395		; 16385 < 16395 => r21 = 1
addi r1, r0, #-8		; r1 = -8
addi r2, r0, #2			; r2 = 2
nop
nop
nop
nop
sra r22, r1, r2			; r22 = 8 >>> 2 = -2
srai r23, r1, #2		; r23 = -8 >>> 2 = -2
addi r1, r0, #50		; r1 = 50
addi r2, r0, #20		; r1 = 20
nop
nop
nop
nop
subu r24, r1, r2		; r24 = 50 - 20 = 30
subui r25, r1, #20		; r25 = 50 - 20 = 30

