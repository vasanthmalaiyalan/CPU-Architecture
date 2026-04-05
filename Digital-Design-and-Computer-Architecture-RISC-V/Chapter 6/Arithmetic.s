.section .text
.globl _start

# ---------------------------------
# a = b + c;
# -----------------------------------

# b = 5, c = 3
li s1, 5
li s2, 3


# a = b + c
add s0, s1, s2

# exit (return a)
mv a0, s0
li a7, 93
ecall
