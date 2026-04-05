.section .text
.globl  _start

_start:
    # -----------Initialise Value -------
    li s0, 4  # apple = 4
    li s1, 4  # orange = 4
    li s3, 10 # g = 10
    li s4, 2   # h = 2

    # -----If condition--------------
    bne s0, s1, L1 # if apple != orange -> skip IF block
    add s2, s3, s4 # f = g+ h (run only if equal

    L1:
      sub s0, s1, s4  # apples = oranges -h (always runs)

      # -------Exit (return value)-------
      mv a0, s2   # return f (just for testing)
      li a7, 93   # syscall exit
      ecall  