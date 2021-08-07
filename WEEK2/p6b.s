.data

    A: .BYTE 10,10,10,10,10,10,10,10,10,10
    B: .BYTE

.text

    LDR R0,=A
    MOV R1,#1
    LDRB R2,[R0]
    LOOP:LDRB R3, [R0, #1]!
    ADD R2,R2,R3
    ADD R1,R1,#1
    CMP R1,#10
    BEQ EXIT
    B LOOP
    EXIT:
    LDR R3,=B
    STR R2,[R3]
.end