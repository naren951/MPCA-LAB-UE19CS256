.data
a: .WORD 3,9,10,12,16,38,40,58,65,79
.text
LDR r0, =a
MOV r1, #10
Loop:
LDR r2, [r0]
CMP r2, r1
BEQ l1
ADD r0, r0, #4
SUBS r1, r1, #1
BNE Loop
MOV r6, #-1 ;if not found
SWI 0x011
l1:
MOV r6, #1 ;if found
SWI 0x011 
.end