.data
    A: .HWORD 18
    B: .HWORD 11
    C: .HWORD
.text
    LDR r1, =A
    LDR r2, =B
    LDR r3, =C
    LDRH r4, [r1]
    LDRH r5, [r2]
    ADD r6,r5,r4
    STRH r6, [r3]
    SWI 0X1011 