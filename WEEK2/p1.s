.text
MOV r0 , #0 
CMP r0, #0  
BEQ if_zero
BMI if_negative
MOV r1, #2
SWI 0x011
if_negative:
MOV r1, #3
SWI 0x011
if_zero:
MOV r1, #1
SWI 0x011
.end
