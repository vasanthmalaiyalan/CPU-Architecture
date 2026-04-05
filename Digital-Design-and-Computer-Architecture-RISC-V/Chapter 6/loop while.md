சூப்பர் 🔥 இது தான் **while loop → assembly translation** 💯
👉 இதை புரிஞ்சா loops full control உனக்கு வந்துடும் 😎

நான் இதை **step-by-step execution + why opposite condition + full clarity**ல explain பண்ணுறேன்

---

# 🧠 🎯 Book சொல்ல வர்ற core idea

> 👉 **Loop = condition TRUE இருக்கும் வரை repeat**
> 👉 Assemblyல:

> 👉 **condition FALSE ஆனா exit (branch)**

---

# 🔥 1️⃣ High-level code

```c id="g0o1l2"
int pow = 1;
int x = 0;

while (pow != 128) {
    pow = pow * 2;
    x = x + 1;
}
```

---

# 🧠 Meaning

👉 loop run ஆகும் வரை:

```text id="h4tq5r"
pow != 128
```

👉 stop when:

```text id="5xg7zt"
pow == 128
```

---

# 💻 2️⃣ Assembly code

```asm id="c6n0xy"
addi s0, zero, 1      # pow = 1
add  s1, zero, zero   # x = 0
addi t0, zero, 128    # t0 = 128

while:
beq  s0, t0, done     # if pow == 128 → exit

slli s0, s0, 1        # pow = pow * 2
addi s1, s1, 1        # x = x + 1

j while               # repeat

done:
```

---

# 🔥 3️⃣ MOST IMPORTANT TRICK

👉 High-level:

```text id="ytbqf7"
while (pow != 128)
```

👉 Assembly:

```text id="cb9tqv"
if (pow == 128) → exit 😎
```

---

👉 அதாவது:

> 👉 opposite condition use பண்ணுறாங்க

---

# 🧠 4️⃣ Step-by-step execution

---

## Initial

```text id="krtxdy"
pow = 1
x = 0
```

---

## Loop iterations

---

### Iteration 1

```text id="bq5y8s"
pow = 1 → not 128
pow = 2
x = 1
```

---

### Iteration 2

```text id="o4yd2r"
pow = 2 → 4
x = 2
```

---

### Iteration 3

```text id="nlp0vh"
pow = 4 → 8
x = 3
```

---

### Iteration 4

```text id="gq2y7k"
pow = 8 → 16
x = 4
```

---

### Iteration 5

```text id="r5q8xm"
pow = 16 → 32
x = 5
```

---

### Iteration 6

```text id="0t2zj9"
pow = 32 → 64
x = 6
```

---

### Iteration 7

```text id="c9y3ot"
pow = 64 → 128
x = 7
```

---

## Exit

```text id="u3mj6h"
pow == 128 → loop stop ✔️
```

---

# 💥 Final result

```text id="p2u3w9"
x = 7
```

👉 Correct:

```text id="6h7gtr"
2^7 = 128
```

---

# 🧠 5️⃣ Why shift use பண்ணுறாங்க?

```asm id="0i7m2m"
slli s0, s0, 1
```

👉 Meaning:

```text id="v7c6xj"
pow × 2
```

---

👉 fast multiplication ✔️

---

# 🔁 6️⃣ Loop structure (IMPORTANT)

```text id="9c6d8u"
while:
    condition check
    ↓
    body
    ↓
    jump back
```

---

# 💥 7️⃣ Visual flow

```text id="f2y1vd"
        while:
          ↓
   pow == 128 ?
      /     \
   YES       NO
   ↓          ↓
 exit       body
              ↓
           jump back
```

---

# 🧠 8️⃣ One-line clarity

👉 while loop (assembly):

> 👉 “condition TRUE இருக்கும் வரை loop, FALSE ஆனா exit”

---

# 🔥 Ultra summary

* while → repeat
* beq → exit condition
* opposite condition use
* slli → multiply by 2
* j → loop back
* result → x = 7

---

💬 இப்போ loop concept strong 🔥😎

---

👉 next level வேண்டுமா?

* for loop full assembly 🔥
* அல்லது do-while difference

நான் இன்னும் deeper கொண்டு போகலாம் 💥
