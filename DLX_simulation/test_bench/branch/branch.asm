L1:								

addi r2, r0, 0							PC = 0
addi r1, r0, 5							PC = 1
							
beqz r1, L1		; backwards beqz, not taken (mispred)	PC = 2
nop								PC = 3
nop								PC = 4
bnez r2, L1		; backwards bnez, not taken (mispred)	PC = 5
nop								PC = 6
nop								PC = 7
beqz r1, L2		; forwards beqz, not taken (pred)	PC = 8
nop								PC = 9
nop								PC = 10
bnez r2, L2		; forwards bnez, not taken (pred)	PC = 11
					
L2:
nop								PC = 12
nop								PC = 13
beqz r2, L3		; forward beqz, taken	(mispred)	PC = 14
	
L4:
nop								PC = 15
nop								PC = 16
bnez r1, L5		; forwards bnez, taken 	(mispred)	PC = 17

L3:	
nop								PC = 18
nop								PC = 19
bnez r1, L4		; backwards bnez, taken	(pred)		PC = 20

L6:
nop								PC = 21
nop								PC = 22
j L7								PC = 23

L5:
nop								PC = 24
nop								PC = 25
beqz r2, L6		; backwards beqz, taken (pred)		PC = 26

L7:
nop								PC = 27			
nop								PC = 28
jal L9			; jump and link				PC = 29
	
L8:	
nop								PC = 30
nop								PC = 31
j L8			; endless jump				PC = 32

L9:		
nop								PC = 33
nop								PC = 34
jr r31			; jump register				PC = 35

