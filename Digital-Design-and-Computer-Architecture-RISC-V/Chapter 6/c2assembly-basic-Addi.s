/*
int main() {
    int a = 5;
    int b = 3;
    int c = a + b;
}
*/
.section .text
.globl _start

_start:
    # a = 5
    li x1, 5   # x1 = 5
    
    # b = 3
    li x2, 3   # x2 = 3

    # c = a + b
    add x3, x1, x2   # x3 = x1 + x2 = 8

    # exit
    li a7, 93 # syscall number (exit)
    li a0, 0  # exit code
    ecall