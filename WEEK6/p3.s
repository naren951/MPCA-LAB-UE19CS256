.data
zero: .byte 0b11101101
one: .byte 0b01100000
two: .byte 0b11001110
three: .byte 0b11101010
four: .byte 0b01100011
five: .byte 0b10101011
six: .byte 0b10101111
seven: .byte 0b11100000

eight: .byte 0b11101111
nine: .byte 0b11100011
A: .byte 0b11100111
B: .byte 0b00101111
C: .byte 0b10001101
D: .byte 0b01101110
E: .byte 0b10001111
F: .byte 0b10000111
VAL: .word 90000
.text


LDR R3,=F
MOV R2,#0
MOV R0,#0
start:  SWI 0x202
        CMP R0,#1
        BEQ down
        CMP R0,#2
        BEQ up
        BL start
                

down:
     MOV R7,#16
     LDR R1,=zero
        loop1:LDRB R0,[R1]
		LDR R6,=VAL
		LDR R6,[r6]
              BL delay
              SWI 0x200
              b1:
                 ADD R1,R1,#1       
                 SUB R7,R7,#1
                 CMP R7,#0
                 BNE loop1
	SWI 0x11
     
up:
     MOV R8,#0
     loop2:LDRB R0,[R3]
		LDR R6,=VAL
		LDR R6,[r6]
	   BL delay
           SWI 0x200
           b2:
               SUB R3,R3,#1
               ADD R8,R8,#1
               CMP R8,#16
               BNE loop2
	SWI 0x11

delay:
       SUB R6,R6,#1
       CMP R6,#0
       BNE delay
       MOV PC,LR
     

