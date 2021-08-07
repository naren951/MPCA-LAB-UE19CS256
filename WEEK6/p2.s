.data
A:.asciz "PESU"

.text
MOV R0,#50 ; X AXIS
MOV R1,#7  ; Y AXIS
loop: 
        LDR R2,=A ; STRING
        SWI 0x204; DISPLAY SRTING
        SUB R0,R0,#1
        CMP R0,#-5
	SWI 0x206
        BNE loop
        SWI 0x11

       
