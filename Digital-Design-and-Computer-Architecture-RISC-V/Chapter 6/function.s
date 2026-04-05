/*
int add(int a, int b) {
    return a + b;
}
*/

.section .text
.globl _start

_start:
     li a0, 4  # arg1 //a0,a1 → arguments
     li a1, 6  # arg2

     call ADD //call → function jump

     # result in a0
     li a7, 93
     ecall 

ADD:
   add a0, a0, a1  # return a + b
   ret //ret → return
