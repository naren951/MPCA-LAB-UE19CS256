.data

    A: .WORD 10,20,30,40,50,60,70,80,90,11

.text

    LDR r0 ,=A
    MOV r1, #10
    loop:
        LDR r3, [r0]
        ADD r2, r2, r3
        SUB r1, r1, #1
        ADD r0, r0, #4
        CMP r1, #0
    BNE loop

.end