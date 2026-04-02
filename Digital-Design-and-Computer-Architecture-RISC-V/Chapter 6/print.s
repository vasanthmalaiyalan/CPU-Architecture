.section  .data
msg: .asciz "Result = 8\n"

.section .text
.globl _start

_start:
    li a7, 64   # write syscall
    li a0, 1    # stdout
    la a1, msg  # message address
    li a2, 11   # length
    ecall

    li a7, 93
    li a0, 0
    ecall