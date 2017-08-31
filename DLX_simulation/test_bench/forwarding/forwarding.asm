start:
nop
nop
addi r1, r0, 10		; arithmetic -> arithmetic
add r2, r0 ,r1		; r2 = 10 (1 without forwarding)
nop
nop
addi r3, r0, 10		; arithmetic -> nop -> arithmetic
nop
add r4, r3 ,r0		; r4 = 10 (3 without forwarding)
nop
nop
addi r1, r0, 20		; arithmetic -> store target
sw 0(r0), r1		; store r1 = 20, instead of r1 = 10
nop
nop
addi r3, r0, 20		; arithmetic -> nop -> store target
nop
sw 1(r0), r3		; store r3 = 20, instead of r3 = 10
nop
nop
addi r1, r0, 2		; arithmetic -> store address
sw 0(r1), r9		; store 9 at address 2, instead of 20
nop
nop
addi r3, r0, 2		; arithmetic -> nop -> store address
nop
sw 1(r3), r9		; store 9 at address 3, instead of 21
nop
nop
addi r1, r0, 0		; arithmetic -> load address
lw r2, 0(r1)		; load 20 from address 0, instead of 9 at address 2
nop
nop
addi r3, r0, 1		; arithmetic -> nop -> load address
nop
lw r4, 0(r3)		; load 20 from address 0, instead of 9 at address 2
nop
nop
lw r2, 10(r0)		; load -> arithmetic
addi r1, r2, 0		; r1 = 0 (20 without forwarding)
nop
nop
lw r4, 10(r0)		; load -> nop -> arithmetic
nop
addi r3, r4, 0		; r3 = 0 (20 without forwarding)
nop
nop
lw r5, 10(r0)		; load -> store target
sw 0(r0), r5		; store 0 at address 0, instead of 5
nop
nop
lw r6, 10(r0)		; load -> store address
sw 0(r6), r9		; store 0 at address 1, instead of 6
nop
nop
addi r1, r0, 10		; arithmetic -> beqz
beqz r1, start		; don't want to take the branch	
nop
nop
addi r2, r0, 10		; arithmetic -> nop -> beqz
nop
beqz r2, start		; don't want to take the branch	
nop
nop
addi r1, r0, 0		; arithmetic -> bnez
bnez r1, start		; don't want to take the branch	
nop
nop
addi r2, r0, 0		; arithmetic -> nop -> bnez
nop
bnez r2, start		; don't want to take the branch	
nop
nop
addi r4, r0, 1000	; arithmetic -> jr
jr r4			; if forwarding works, we jump at the end, if not we jump at the start
