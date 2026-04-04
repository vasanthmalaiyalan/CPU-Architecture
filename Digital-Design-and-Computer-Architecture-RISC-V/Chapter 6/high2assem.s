.section .text
.globl _start

_start:
    # -----------------------------------
    # Initialize values (example values)
    # f = (g + h) - (i + j);
    # a = b - c;
    # -----------------------------------
    li s1, 10    # b = 10
    li s2, 3     # c = 3
    li s4, 4     # g = 4
    li s5, 6     # h = 6
    li s6, 8     # i = 8
    li s7, 2     # j = 2

    # ----------------------------------------
    # a = b - c
    # -----------------------------------------
    sub s0, s1, s2     # s0 = s1 - s2 -> a = b - c

    # -----------------------------------------
    # t0 = g + h    (f = (g + h) - (i + j);)
    # ------------------------------------------
    add t0 s4, s5    # t0 = s4 + s5 -> g + h

    # --------------------------------------------
    # t1 = i + j
    # --------------------------------------------
    add t1, s6, s7     # t1 = s6 + s7 -> i + j

    # -----------------------------------------
    #  (f = (g + h) - (i + j))
    # ------------------------------------------
    sub s3, t0, t1     # s3 = t0 - t1 -> f

    #----------------------------------------------
    # EXit program (return f as exit code)
    # ---------------------------------------------
    mv a0, s3    # move result f -> a0
    li a7, 93    # syscall: exit
    ecall        # exit

    /*
    🧠 What this program does
🔢 Given values
b = 10
c = 3
g = 4
h = 6
i = 8
j = 2
🟢 Step 1
a = b - c = 10 - 3 = 7
🟡 Step 2
g + h = 4 + 6 = 10
🔵 Step 3
i + j = 8 + 2 = 10
🔴 Step 4
f = 10 - 10 = 0
🧪 Output check
qemu-riscv64 ./main
echo $?

👉 Output:

0
💥 Key learning

👉 இது full pipeline:

High-level → Assembly → Register → CPU → Result
🧠 One-line clarity

👉 இந்த program:

👉 “b−c மற்றும் (g+h)−(i+j) calculate பண்ணி result return பண்ணும்”

🔥 Bonus (important)

👉 நீ print செய்யணும்னா:

write syscall use பண்ணணும்
இது exit code மட்டும் return பண்ணும்
    */



