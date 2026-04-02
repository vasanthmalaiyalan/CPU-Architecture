/*
if (a == b)
    c = 1;
else
    c = 0;
*/

.section .text
.globl _start

_start:
   li x1, 5   # a = 5
   li x2, 5   # b = 5

   # if (a == b)
   beq x1, x2, equal  # beq = branch if equal 

   # else part
   li x3, 0  # c = 0
   j end

equal:
    li x3, 1  # c = 1

end:
    li a7, 93
    li a0, 0
    ecall       