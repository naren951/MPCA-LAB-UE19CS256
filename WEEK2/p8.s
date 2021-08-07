.data 
    A: .WORD 10
    B: .WORD 10
.text
    LDR R0,=A
    LDR R1,[R0]
    LDR R0,=B
    LDR R2, [R0]
    ADD R0,R1,R2
    MOV R4,R2 ,LSL #1
    ADD R4,R4,R2
    ADD R0,R0,R4
    SWI 0x1011
.end