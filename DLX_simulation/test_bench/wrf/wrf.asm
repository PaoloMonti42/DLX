addi r1, r0, 99			; writing in the right window even if it changes
call
addi r1, r0, 99			; writing in the right window even if it changes
ret
nop
nop
nop
addi r22, r0, 44		; writing in OUT
addi r28, r0, 77		; writing in GLOB
call
nop
addi r2, r6, 0			; reading from IN
addi r3, r28, 0			; reading from GLOB
ret
nop
nop
call
call
call				; triggering a spill
nop
addi r22, r0, 55		; writing in the OUT of the last window, that are the IN of the first
nop
nop
nop
ret
ret
ret				; fill restores original content of r6 (old r22) so it's clean
nop
addi r4, r0, 0			; back in window 0, can do operations as we never called a subroutine
