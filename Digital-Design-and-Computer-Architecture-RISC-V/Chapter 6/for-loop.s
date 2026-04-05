/*
for (i = 0; i < 5; i++)
*/

.section .text
.globl _start

_start:
    li t0, 0   # i = 0

LOOP:
    li t1, 5
    bge t0, t1, END # if i >= 5 exit, bge → loop condition

    addi t0, t0, 1  # i++, addi → increment

    j LOOP # j LOOP → repeat

END:
   mv a0, t0
   li a7, 93
   ecall    
        

