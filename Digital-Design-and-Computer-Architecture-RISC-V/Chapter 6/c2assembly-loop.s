/*
int sum = 0;
for (int i = 0; i < 5; i++) {
    sum += i;
}
*/
.section .text
.globl _start

_start:
     li x1, 0  # i = 0
     li x2, 0  # sum = 0
     li x3, 5  # limit = 5

loop:
   bge x1, x3, end  # if i >= 5 -> exit

   add x2, x2, x1  # sum += i

   addi x1, x1, 1  # i++

   j loop   # repeat

end:
   li a7, 93
   li a0, 0
   ecall   
