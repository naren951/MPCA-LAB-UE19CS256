.text
MOV r0, #10
MOV r1, #0
MOV r2, #1
LDR r3, =a
STR r1, [r3], #4
STR r2 ,[r3], #4
CMP r0, #1
BNE Loop
Loop:
ADD r5, r1, r2
MOV r1, r2
MOV r2, r5
STR r5, [r3], #4
SUBS r0, r0, #1
CMP r0, #1
BEQ exit
BL Loop
exit:
SWI 0x011
.data
a: .WORD 