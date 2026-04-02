/*
int arr[3] = {10, 20, 30};
int x = arr[1];
*/

.section .data
arr: .word 10, 20, 30

.section .text
.globl _start

_start:
    la x2, arr  # load base address

    lw x1, 4(x2) # arr[1] (index * 4)

    li a7, 93
    li a0,0
    ecall