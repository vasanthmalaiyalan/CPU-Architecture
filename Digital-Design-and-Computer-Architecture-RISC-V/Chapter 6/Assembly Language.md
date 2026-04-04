சூப்பர் 🔥 இப்போ நம்ம **Assembly Language (core concept)**க்கு வந்துட்டோம் 💯
👉 இது தான் “human ↔ CPU communication bridge” 😎

நான் இதை **simple Tamil + examples + C → Assembly mapping**ல explain பண்ணுறேன்

---

# 🧠 1️⃣ Assembly Language — என்ன?

👉 Book சொல்றது:

> 👉 “Human-readable version of machine language”

---

## 🧠 Meaning

> 👉 “CPU புரியும் 0/1 code-ஐ, மனிதர்களுக்கு easy ஆக எழுதுற வடிவம்”

---

## 🔢 Example

### Machine code ❌

```text id="8a3lg4"
00000000001000000000000010110011
```

👉 புரியுமா? 😵

---

### Assembly ✔️

```asm id="2zq3sv"
add t0, t1, t2
```

👉 easy ✔️

---

# 🔥 2️⃣ Instruction structure

👉 ஒவ்வொரு instruction:

```text id="v9b9se"
Operation + Operands
```

---

## 🧠 Example

```asm id="s5ngf0"
add t0, t1, t2
```

👉 Meaning:

```text id="ol6x5g"
t0 = t1 + t2
```

---

# 💻 3️⃣ High-level → Assembly

---

## 🟢 C code

```c id="v9qz8l"
c = a + b;
```

---

## 🔴 Assembly

```asm id="pgqj6t"
add t0, t1, t2
```

👉 (assuming t0=c, t1=a, t2=b)

---

# 🧠 4️⃣ Operands types (VERY IMPORTANT 🔥)

👉 RISC-Vல 3 types:

---

## 🟢 (A) Registers

👉 Small fast memory

---

### Example

```asm id="hcs8x0"
add t0, t1, t2
```

👉 எல்லாமே registers

---

---

## 🔴 (B) Memory

👉 Large storage

---

### Example

```asm id="f7b8gs"
lw t0, 0(t1)
```

👉 Meaning:

```text id="1i3m5d"
t0 = memory[t1 + 0]
```

---

---

## 🟡 (C) Constants (Immediate)

👉 Fixed values

---

### Example

```asm id="2v3y8h"
addi t0, t1, 5
```

👉 Meaning:

```text id="sl4yq1"
t0 = t1 + 5
```

---

# 🔥 5️⃣ Why Assembly important?

👉 காரணம்:

* CPU directly இதை execute பண்ணும்
* Performance control ✔️
* Low-level understanding ✔️

---

# 🧠 6️⃣ Example (full)

---

## C code

```c id="7rfy4u"
x = y + 5;
```

---

## Assembly

```asm id="5v9l1z"
addi t0, t1, 5
```

---

## 🧠 Meaning

```text id="1q8kdc"
t0 = t1 + 5
```

---

# ⚡ 7️⃣ Another example

---

## C

```c id="u0g6s0"
if (a == b)
```

---

## Assembly

```asm id="c2r0mt"
beq t0, t1, label
```

---

👉 Meaning:

```text id="q0p2kh"
if equal → jump
```

---

# 🧠 Big intuition

👉 Assembly:

> 👉 “CPUக்கு நேரடியாக instructions கொடுக்குற language”

---

# 💥 One-line clarity

👉 Assembly language:

> 👉 “Machine codeக்கு human-friendly representation”

---

# 🧠 Ultra summary

* Assembly = readable machine code
* Instruction = operation + operands
* Operands:

  * registers
  * memory
  * constants
* C → assembly → machine

---

💬 இப்போ clearஆ புரிஞ்சுதா 😎

👉 next level வேண்டுமா?

* RISC-V registers (t0, a0, s0 full meaning 🔥)
* அல்லது instruction formats (R-type, I-type)

நான் next stepக்கு கொண்டு போகிறேன் 💥
