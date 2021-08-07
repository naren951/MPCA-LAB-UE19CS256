.data
a:.asciz "Subject Code\tMarks\nSUBJECT1\t90\nSUBJECT2\t93\nSUBJECT3\t78\nTOTAL MARKS SCORED :\t261/300\nPERCENTAGE :\t87%\nGRADE:\tA"

.text
LDR R0,=a
SWI 0x02
.end
