.data
A:.word 84000
.text

MOV R0,#1
loop:SWI 0x201
     LDR R4,=A
     LDR R4,[R4]
     delay: SUB R4,R4,#1
            CMP R4,#0
            BNE delay
     ADD R0,R0,#1
     CMP R0,#3
     BLE loop
     SWI 0x011
