.text
MOV r0, #106
MOV r1, #204
CMP r0, r1
BEQ if_equal
SUB r2, r0, r1
SWI 0x011
if_equal:
ADD r2, r1, r0
SWI 0x011
.end