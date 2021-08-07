.text       
        MOV r0, #0
        MOV r1, #6
        ANDs r1, r1, #1

        BEQ cond
                MOV r0, #0xFF
                B exit
        cond:
                MOV r0, #0
        exit:
                SWI 0x011
.end