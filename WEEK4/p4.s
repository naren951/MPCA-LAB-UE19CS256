.data
a: .word 10, 20, 30, 40, 50, 60, 70, 80, 90 ;row major
b: .word 0, 0, 0
.text
LDR r0, =a
LDR r8, =b
MOV r1, #3 ;3 elements in each row
; 5th element
MOV r5, #1
MOV r6, #1
MOV r7, #4 ; 4 bytes
MLA r2, r5, r1, r5 
MUL r3, r2 ,r7
LDR r4, [r0,r3]
STR r4, [r8], #4
; 8th element
MOV r5, #2
MOV r6, #1
MOV r7, #4 ; 4 bytes
MLA r2, r5, r1, r5 
MUL r3, r2 ,r7
LDR r4, [r0,r3]
STR r4, [r8], #4
; 1th element
MOV r5, #0
MOV r6, #0
MOV r7, #4 ; 4 bytes
MLA r2, r5, r1, r5 
MUL r3, r2 ,r7
LDR r4, [r0,r3]
STR r4, [r8], #4
.end