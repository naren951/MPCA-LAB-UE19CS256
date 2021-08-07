.text
    MOV R0,#10
    MOV R1,R0, LSL #5;
    MOV R2,R0, LSL #1;
    ADD R3,R1,R2
    ADD R0,R0,R3
    SWI 0x1011
.end