.section .text # code section
.globl _start  # entry point

_start:
    li a0, 3   # A = 3
    li a1, 5   # B = 5

    slt t0, a0, a1  # t0 = (A < B)

    bne t0, x0, LESS # if true -> jump

    li t1, 0   # else -> t1 = 0
    j END

LESS:
    li t1, 1       # if -> t1 -> 1

END:
   # print t1 (like exit code)
   mv a0, t1        # a0 = result
   li a7, 93        # exit syscall (linux )
   ecall             # OS call        

