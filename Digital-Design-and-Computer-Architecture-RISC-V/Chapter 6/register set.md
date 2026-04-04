சூப்பர் 🔥 இப்போ நீ வந்துட்டே இருக்குறது **RISC-V Register Set (full understanding)** 💯
👉 இது புரிஞ்சா assembly writing next level easy ஆகிடும் 😎

நான் இதை **simple Tamil + categories + usage + intuition**ல explain பண்ணுறேன்

---

# 🧠 1️⃣ Register Set — என்ன?

👉 RISC-Vல:

> 👉 **மொத்தம் 32 registers**

---

## 🔢 Numbering

```text
x0 → x31
```

👉 Each registerக்கு special name இருக்கும்

---

# 🔥 2️⃣ Why special names?

👉 Example:

```asm
add x9, x10, x11   ❌ (hard)
add s1, a0, a1     ✔️ (easy)
```

👉 So:

> 👉 readability improve ஆகும்

---

# 🧠 3️⃣ Important registers (group-wise)

---

# 🟢 (A) Zero Register (VERY IMPORTANT 🔥)

---

## 👉 x0 = zero

```text
Always = 0
```

---

## 💥 Special behavior

* read → always 0
* write → ignore 😳

---

## 🔢 Example

```asm
add t0, t1, x0   # t0 = t1
```

👉 because x0 = 0

---

# 🔵 (B) Temporary Registers

---

## 👉 t0 – t6

```text
t0–t6 → temporary வேலைகள்
```

---

## 💥 Use

* intermediate values
* short-term data

---

## 🔢 Example

```asm
add t0, s1, s2
```

---

# 🟡 (C) Saved Registers

---

## 👉 s0 – s11

```text
long-term variables
```

---

## 💥 Use

* variables store
* function callsல preserve

---

## 🔢 Example

```asm
add s0, s1, s2
```

---

# 🔴 (D) Argument Registers

---

## 👉 a0 – a7

```text
function arguments / return values
```

---

## 💥 Use

* function input
* function output

---

# ⚙️ (E) Special Registers

---

## 🟢 ra (return address)

👉 function return address store

---

## 🔵 sp (stack pointer)

👉 stack manage

---

## 🟡 gp (global pointer)

👉 global data

---

## 🔴 tp (thread pointer)

👉 multi-thread

---

# 🧠 4️⃣ Quick Table

| Type    | Registers      | Use       |
| ------- | -------------- | --------- |
| zero    | x0             | always 0  |
| temp    | t0–t6          | temporary |
| saved   | s0–s11         | variables |
| arg     | a0–a7          | function  |
| special | ra, sp, gp, tp | system    |

---

# 🔥 5️⃣ Important idea

👉 Book சொல்றது:

> 👉 “register number vs name”

---

## 🧠 Example

```text
x9 = s1
x10 = a0
```

👉 same register ✔️

---

# 💥 6️⃣ Big intuition

👉 Registers:

> 👉 “CPU working slots”

---

## 🔢 Example flow

```asm
add t0, s1, s2
sub s0, t0, s3
```

👉 t0 → temporary
👉 s0 → final result

---

# 🧠 7️⃣ Why only 32 registers?

👉 Design Principle 3:

> 👉 “Smaller is faster”

---

👉 More registers:

* slower ❌
* complex ❌

---

👉 Less registers:

* faster ✔️

---

# 💥 One-line clarity

👉 Register set:

> 👉 “CPUல் உள்ள 32 fast storage locations with specific roles”

---

# 🔥 Ultra summary

* 32 registers
* x0 = always 0
* t → temporary
* s → variables
* a → function args
* special → system
* names → readability

---

💬 இப்போ register system clearஆ புரிஞ்சிருக்கும் 😎

👉 next level வேண்டுமா?

* full register map (x0–x31 exact mapping 🔥)
* அல்லது calling convention deep

நான் next levelக்கு கொண்டு போகிறேன் 💥
