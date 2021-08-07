.data
a:.asciz "abhishek"
b:.asciz ""

.text
LDR R1,=a
LDR R2,=b
loop:LDRB R0,[R1],#1
	STRB R0,[R2],#1
	CMP R0,#0
	
	BNE loop
	
	LDR R0,=b
	SWI 0x02
	SWI 0x11
.end
