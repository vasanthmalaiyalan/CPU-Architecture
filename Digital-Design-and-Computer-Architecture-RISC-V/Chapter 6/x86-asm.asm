section .text
global _start

_start:
    mov rax, 2
    mov rbx, 5
    cmp rax, rbx
    jl less