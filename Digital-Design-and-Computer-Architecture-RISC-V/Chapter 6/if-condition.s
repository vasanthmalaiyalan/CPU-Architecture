/*
if (a < b)
    x = 1;
else
    x = 0;
*/

.section .text
.global _start

_start:
    li s0, 2  # a = 2
    li s1, 5  # b = 5

    # a < b ?
    slt t0, s0, s1

    # if true jump
    bne t0, x0, TRUE

    # else
    li s2, 0  # x = 0
    j END

TRUE:
    li s2, 1  # x = 1

END:
     mv a0, s2
     li a7, 93
     ecall
