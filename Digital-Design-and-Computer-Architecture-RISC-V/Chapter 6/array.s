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

     slli t2, t0, 2  # i * 4 (word size),left shift operator
     add t3, t1, t2  # address = arr + offset

     lw s0, 0(t3)   # x = arr[i]

     mv a0, s0
     li a7, 93
     ecall



