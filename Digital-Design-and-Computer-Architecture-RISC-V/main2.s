.section .bss
buffer: .space 20

.section .text
.global _start

_start:
    li x1, 5
    li x2, 3
    add x3, x2, x1 # x3 = 8

    mv t0,t3 # number copy
    la t1, buffer # buffer address
    addi t1, t1, 19 # end of buffer
    li t2, 10 # base 10

convert:
    rem t3, t0, t2 # remainder
    addi t3, t3, 48 # ASCII ('0' = 48)
    sb t3, 0(t1) # store char

    div t0, t0, t2
    addi t1, t1, -1

    bnez t0, convert

    add t1, t1, 1 # correct pointer

    # write syscall
    li a7, 64
    li a0, 1
    mv a1, t1
    la t4, buffer
    addi t4, t4, 20
    sub a2, t4, t1 # length
    ecall

    #exit
    li a7, 93
    li a0, 0
    ecall

