/*
int c = (a + b) - d;
*/

.section .text
.globl _start

_start:
    li x1, 10  # a = 10
    li x2, 5   # b = 5
    li x4, 3   # d = 3

    # temp = a + b
    add t0, x1, x2  # t0 = 15

    # c = temp - d
    sub x3, t0, x4  # x3 = t0 - x4 => 15 - 3 = 12

    # exit
    li a7, 93
    li a0, 0
    ecall