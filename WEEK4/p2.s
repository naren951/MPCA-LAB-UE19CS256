.data
a: .word 10, 20, 30, 40, 50
b: .word 10, 20, 30, 40, 50
c: .word 0,0,0,0,0
.text
MOV r1, #5
LDR r2, =a
LDR r3, =b
LDR r0, =c
BL loop
loop:
LDR r4, [r2]
LDR r5, [r3]
MUL r7, r4, r5
STR r7, [r0]
ADD r2, r2, #4
ADD r3, r3, #4
ADD r0, r0, #4
SUB r1, r1 ,#1
CMP r1, #0
BNE loop
.end