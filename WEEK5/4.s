.data
a:.asciz "hello world"
b:.asciz "o"
c:.asciz "character o is present"
d:.asciz "character o is not present"
e:.asciz ""
.text
LDR R0,=a
LDR R2,=b
LDR R4,=e
MOV R3,#0
loop:LDRB R1,[R0],#1
	CMP R1,#0
	BEQ loop4
	
	
	CMP R1,R2
	BEQ found
	B loop
	
	

found:ADD R3,R3,#1
	  B loop
	  
loop4:CMP R3,#0
	  BNE loop2
	  B loop3
	  
loop2:LDR R0,=c
	  SWI 0x02
	  STRB R3,[R4]
	  LDR R0,=e
	  SWI 0x02
	  B exit
	  
loop3:LDR R0,=d
	  SWI 0x02
	  STRB R3,[R4]
	  LDR R0,=e
	  SWI 0x02
	  B exit
exit:SWI 0x11
.end
