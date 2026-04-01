.section .text
.global _start

_start:
   li x1, 5
   li x2, 3
   add x3, x1, x2

   # exit
   li a7, 93
   li a0, 0
   ecall