சூப்பர் 🔥 இப்போ நம்ம **Programming (High-level → Assembly thinking)**க்கு வந்துட்டோம் 💯
👉 இது தான் “C code → CPU எப்படி execute பண்ணுது” full புரியும் stage 😎

நான் இதை **big-picture + constructs + mapping + intuition**ல explain பண்ணுறேன்

---

# 🧠 1️⃣ Programming — என்ன context?

👉 Book சொல்றது:

> 👉 “High-level language → assembly translation”

---

## 🧠 Meaning

> 👉 “C/Java code எப்படி assembly instructions ஆக மாறுது?”

---

# 🔥 2️⃣ High-Level Languages

👉 Examples:

* C
* Java

---

## 🧠 Why “high-level”?

> 👉 human-friendly
> 👉 abstract

---

## 🔢 Example

```c id="r0iij5"
if (a < b)
    c = a + b;
```

👉 easy to read ✔️

---

# 🔴 3️⃣ Assembly — low-level

👉 Same thing assemblyல:

```asm id="3px4sj"
slt t0, a0, a1
bne t0, x0, label
add t1, a0, a1
```

👉 more steps 😐

---

# 💥 4️⃣ Key idea

👉 High-level:

```text id="93zrzr"
few lines
```

👉 Assembly:

```text id="sl92jd"
many instructions
```

---

# 🧠 5️⃣ Common programming constructs

👉 Book சொல்றது:

---

## 🟢 (A) Arithmetic operations

```c id="wajw8p"
a = b + c;
```

```asm id="k3n3sx"
add s0, s1, s2
```

---

## 🔵 (B) Logical operations

```c id="e3k44q"
if (a == b)
```

```asm id="08j4qk"
beq s0, s1, label
```

---

## 🟡 (C) if / else

```c id="2tpyjr"
if (a < b)
    x = 1;
else
    x = 0;
```

---

👉 Assembly:

```asm id="fd0q1d"
slt t0, s0, s1
bne t0, x0, TRUE
li t1, 0
j END

TRUE:
li t1, 1

END:
```

---

## 🔁 (D) Loops

```c id="24hm8i"
for (i = 0; i < 10; i++)
```

---

👉 Assembly:

```asm id="a0mb45"
li t0, 0

LOOP:
bge t0, 10, END
addi t0, t0, 1
j LOOP

END:
```

---

## 📦 (E) Arrays

```c id="a6p21q"
a[i]
```

👉 Assembly:

```asm id="ph4eht"
lw t0, 0(t1)
```

👉 (address calculation needed)

---

## 🔁 (F) Function calls

👉 use:

* `a0–a7` (arguments)
* `ra` (return address)

---

# 🔥 6️⃣ Program Flow (VERY IMPORTANT)

👉 CPU:

> 👉 sequentialா execute பண்ணும்

---

## 🧠 Flow types

* sequential
* branch (if)
* loop

---

# 💥 7️⃣ Translation idea

👉 Rule:

> 👉 “High-level construct → multiple simple instructions”

---

## 🧠 Example

```c id="d7n41c"
a = b + c - d;
```

---

👉 Assembly:

```asm id="xng6s1"
add t0, s1, s2
sub s0, t0, s3
```

---

# 🧠 8️⃣ Big intuition

👉 Compiler job:

```text id="g2ppb4"
C → assembly → machine code
```

---

👉 CPU:

```text id="nefo0c"
assembly execute பண்ணும்
```

---

# 💥 9️⃣ Why important?

👉 இதை புரிஞ்சா:

* debugging ✔️
* optimization ✔️
* security (reverse engineering 😏) ✔️

---

# 🧠 One-line clarity

👉 Programming (in this chapter):

> 👉 “High-level code எப்படி assembly instructions ஆக மாறுது”

---

# 🔥 Ultra summary

* High-level → abstract
* Assembly → detailed
* constructs:

  * arithmetic
  * if/else
  * loops
  * arrays
  * functions
* translation → step-by-step

---

💬 இப்போ big picture clearஆ வந்திருக்கும் 😎

👉 next level வேண்டுமா?

* if/else deep (branch instructions full 🔥)
* அல்லது loop translation practice

நான் உன்னை assembly master levelக்கு கொண்டு போகலாம் 💥
