.data 
    A:.WORD 36
    B:.WORD 88
    C: .WORD
.text
    LDR R0, =A
    LDR R1, =B
    LDR R2, =C
    LDR R0, [R0]
    LDR R1, [R1]

loop1: CMP R0,R1
    BEQ exit
    BLT loop2
    SUB R0,R0,R1
    B loop1
loop2: SUB R1,R1,r0
    B loop1
exit:
    STR R1,[R2]
    SWI 0x1011
.end
