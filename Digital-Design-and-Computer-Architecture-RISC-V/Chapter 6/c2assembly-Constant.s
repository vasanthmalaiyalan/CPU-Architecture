/*
int a = b + 7;
*/

.section .text
.globl _start

_start:
    li x2, 3  # b = 3
    
    # a = b + 7
    addi x1, x2, 7  # x1 = 10

    # exit
    li a7, 93
    li a0,0
    ecall