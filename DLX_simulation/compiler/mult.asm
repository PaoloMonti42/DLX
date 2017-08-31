addi r1, r0, 6
addi r2, r0, 7
lw r4, 100(r1)		; r4 = mem(106) = 0
mult r3, r1, r2		; r3 = 6 * 7 = 42
mult r5, r1, r3		; r5 = 6 * 42 = 252
sw 100(r3), r5		; mem(142) = 252
addi r3, r3, 2		; r3 = 44
shift:

srli r3, r3, 1		; r3 = r3/2 (44 -> 22 -> 11 -> 5 -> 2 -> 1 -> 0)
bnez r3, shift

fine:
j fine
