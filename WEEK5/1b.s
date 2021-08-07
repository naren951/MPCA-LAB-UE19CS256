.data
a:.asciz "Subject Code\tMarks\nSUBJECT1\t90\nSUBJECT2\t93\nSUBJECT3\t78\nTOTAL MARKS SCORED :\t261/300\nPERCENTAGE :\t87%\nGRADE:\tA"

.text
LDR R1,=a
loop:LDRB R0,[R1],#1
	
	SWI 0x00
	CMP R0,#0
	BNE loop
	SWI 0x11
.end
