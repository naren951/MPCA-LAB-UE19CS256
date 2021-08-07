.data
a:.asciz "abhishek"

.text
LDR R1,=a
MOV R10,#-1
loop:LDRB R0,[R1],#1
	
	CMP R0,#0
	ADD R10,R10,#1
	BNE loop
	
	
	SWI 0x11
.end
