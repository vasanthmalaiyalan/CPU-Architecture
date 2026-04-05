/*
x = arr[i];
*/

.section .data
arr: .word 10, 20, 30, 40

.section .text
.globl _start

_start:
     la t1, arr  # base address , la => load address
     li to, 2    # i = 2

     slli t2, t0, 2  # i * 4 (word size)
     


