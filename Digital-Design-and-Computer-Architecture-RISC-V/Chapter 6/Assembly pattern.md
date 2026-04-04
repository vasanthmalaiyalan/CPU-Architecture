சூப்பர் 🔥 இப்போ நம்ம **Instructions (assembly basics)** — இது CPU languageல முதல் step 💯
👉 இதை clearஆ புரிஞ்சா full assembly easy ஆகிடும் 😎

---

# 🧠 1️⃣ Instruction — என்ன?

👉 Simple:

> 👉 “CPUக்கு கொடுக்குற ஒரு command”

---

## 🔥 Example

```asm
add a, b, c
```

👉 இது ஒரு instruction

---

# 🧠 2️⃣ High-level vs Assembly

---

## 🟢 C code

```c
a = b + c;
```

---

## 🔴 Assembly

```asm
add a, b, c
```

---

## 🧠 Meaning

```text
a = b + c
```

👉 Same operation ✔️

---

# 🔥 3️⃣ Instruction structure

👉 ஒவ்வொரு instruction:

```text
mnemonic + operands
```

---

## 🧠 Example

```asm
add a, b, c
```

---

## Breakdown

| Part | Meaning              |
| ---- | -------------------- |
| add  | operation (mnemonic) |
| a    | destination          |
| b, c | source operands      |

---

# 🧠 4️⃣ Mnemonic என்றால்?

👉 Book சொல்றது:

> 👉 “operation name”

---

## 🔥 Examples

* add → addition
* sub → subtraction
* lw → load
* sw → store

---

# 🔥 5️⃣ Operand types

👉 Instructionல வரும் values:

---

## 🟢 Destination

👉 result போகும் இடம்

---

## 🔴 Source operands

👉 input values

---

## 🔢 Example

```asm
add a, b, c
```

👉 Meaning:

```text
a = b + c
```

---

# 🔥 6️⃣ Subtraction example

---

## 🟢 C

```c
a = b - c;
```

---

## 🔴 Assembly

```asm
sub a, b, c
```

---

👉 Same format ✔️

---

# 💥 7️⃣ IMPORTANT — Design Principle

👉 Book சொல்றது:

> 👉 “Regularity supports simplicity”

---

## 🧠 Meaning

👉 எல்லா instructions same format:

```text
destination, source1, source2
```

---

## 🔥 Why useful?

👉 Easy to:

* learn ✔️
* design ✔️
* implement ✔️

---

# 🧠 8️⃣ Pattern (VERY IMPORTANT)

👉 RISC-V:

```text
dest = src1 OP src2
```

---

## 🔢 Examples

```asm
add t0, t1, t2   # t0 = t1 + t2
sub t0, t1, t2   # t0 = t1 - t2
```

---

# 🧠 Big intuition

👉 Assembly:

> 👉 “Math expression → 3-part instruction”

---

# 💥 One-line clarity

👉 Instruction:

> 👉 “operation + operands (destination + sources)”

---

# 🧠 Ultra summary

* Instruction = CPU command
* add a, b, c → a = b + c
* mnemonic → operation name
* format → same (regularity)
* easy design

---

💬 இப்போ clearஆ புரிஞ்சுதா 😎

👉 next level வேண்டுமா?

* Registers (a0, t0, s0 full meaning 🔥)
* அல்லது instruction formats (R-type deep)

நான் next stepக்கு கொண்டு போகிறேன் 💥
