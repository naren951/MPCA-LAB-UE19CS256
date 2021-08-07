.text
      LDR r0,=a
      LDR r1,=b
      LDR r3,=c
      LDR r4,[r0]
      LDR r5,[r1]
      ADD r4,r4,r5
      STR r4,[r3]
      ADD r0,r0,#4
      ADD r1,r1,#4
      ADD r3,r3,#4
      LDR r4,[r0]
      LDR r5,[r1]
      ADD r6,r4,r5
      STR r6,[r3]
      SWI 0x011


.data
      a:.word 12345678, 57689457
      b:.word 98564532, 46237824
      c:.word 0,0