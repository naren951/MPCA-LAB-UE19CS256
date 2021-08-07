.data
    A: .WORD 151
    B: .WORD 87
    C: .WORD
.text
    LDR r1, =A
    LDR r2, =B
    LDR r3, =C
    LDR r4, [r1]
    LDR r5, [r2]
    ADD r6,r5,r4
    STR r6, [r3]
    SWI 0X1011 
