சூப்பர் 🔥 இப்போ நம்ம **Constants / Immediates** — இது assemblyல everyday use ஆகும் concept 💯
👉 registers இல்லாமலே value use பண்ணுற powerful feature 😎

நான் இதை **simple Tamil + examples + binary intuition + why important**ல explain பண்ணுறேன்

---

# 🧠 1️⃣ Immediate (Constant) — என்ன?

👉 Simple:

> 👉 “Instructionக்குள்ளே நேரடியாக இருக்கும் value”

---

## 🔢 Example

```asm
addi t0, t1, 5
```

👉 இதில்:

```text
5 → immediate (constant)
```

---

## 🧠 Meaning

```text
t0 = t1 + 5
```

---

👉 Memoryல இருந்து fetch செய்ய வேண்டாம் ❌
👉 Registerல இருந்து வேண்டாம் ❌

👉 Direct instructionலே இருக்கும் ✔️

---

# 🔥 2️⃣ Why “Immediate” என்ற பெயர்?

👉 Book சொல்றது:

> 👉 “immediately available”

---

## 🧠 Meaning

> 👉 “CPUக்கு உடனே கிடைக்கும் value”

---

👉 அதனால்:

* fast ✔️
* extra access இல்ல ✔️

---

# ⚙️ 3️⃣ addi instruction

---

## 🔢 Syntax

```asm
addi dest, src, immediate
```

---

## 🧠 Example

```asm
addi s0, s1, 10
```

👉 Meaning:

```text
s0 = s1 + 10
```

---

# 🔥 4️⃣ Number formats

👉 Immediate values எழுதலாம்:

---

## 🟢 Decimal

```asm
addi t0, t1, 10
```

---

## 🔵 Hexadecimal

```asm
addi t0, t1, 0xA
```

---

## 🔴 Binary

```asm
addi t0, t1, 0b1010
```

---

👉 எல்லாமே same ✔️

---

# 🧠 5️⃣ 12-bit limitation (VERY IMPORTANT 🔥)

👉 Book சொல்றது:

> 👉 “Immediate = 12-bit”

---

## 🔢 Range

```text
-2048 to +2047
```

---

👉 இதுக்கு வெளியே value → directா முடியாது ❌

---

# ⚠️ Why?

👉 Instruction size fixed:

```text
32-bit instruction
```

👉 அதுல:

* opcode
* registers
* immediate

👉 space limited 😐

---

# 🔥 6️⃣ Two’s Complement + Sign Extension

---

## 🧠 Idea

👉 Immediate:

```text
12-bit
```

👉 But register:

```text
32-bit
```

---

👉 So:

> 👉 sign extend பண்ணும்

---

## 🔢 Example

```text
-1 (12-bit) = 111111111111
```

👉 extend:

```text
11111111111111111111111111111111
```

---

👉 still -1 ✔️

---

# 🧠 7️⃣ Initialization use (VERY IMPORTANT)

👉 Book சொல்றது:

> 👉 “register initialize செய்ய use”

---

## 🔢 Example

```asm
addi s0, x0, 0     # i = 0
addi s1, x0, 2032  # x = 2032
addi s2, x0, -78   # y = -78
```

---

## 🧠 Why x0?

👉 x0 = 0

👉 So:

```text
s0 = 0 + 0 = 0
```

---

# 💥 8️⃣ Big intuition

👉 Immediate:

> 👉 “small constant value, direct instructionல use பண்ணலாம்”

---

# 🧠 9️⃣ Combine with registers

---

## 🔢 Example

```asm
addi t0, t0, 1
```

👉 counter increment ✔️

---

---

# 💥 One-line clarity

👉 Immediate:

> 👉 “instructionக்குள்ளே இருக்கும் constant value”

---

# 🔥 Ultra summary

* immediate = constant
* addi → add with constant
* formats:

  * decimal
  * hex (0x)
  * binary (0b)
* 12-bit limit
* sign-extended
* initialization use

---

💬 இப்போ clearஆ புரிஞ்சுதா 😎

👉 next level வேண்டுமா?

* large constants எப்படி load பண்ணுறது (`lui`, `li` deep 🔥)
* அல்லது immediate encoding (bit-level)

நான் இன்னும் deep கொண்டு போகலாம் 💥
