சூப்பர் 🔥 இப்போ நம்ம **Registers** — இது CPU performanceல heart மாதிரி 💯
👉 இது புரிஞ்சா assembly + architecture இரண்டும் solid ஆகிடும் 😎

நான் இதை **simple + intuition + examples + design principle connect**ல explain பண்ணுறேன்

---

# 🧠 1️⃣ Register — என்ன?

👉 Simple:

> 👉 “CPU உள்ளே இருக்கும் super fast small memory”

---

## 💥 Why needed?

👉 Memory slow 😐

👉 அதனால்:

> 👉 frequently use ஆகுற data → registerல வைச்சுக்கிறோம்

---

# ⚡ 2️⃣ Speed intuition

👉 Example:

| Place    | Speed       |
| -------- | ----------- |
| Register | ⚡ மிக வேகம் |
| Memory   | 🐢 slow     |

---

## 🧠 Analogy

👉 Register:

> 👉 desk மேல இருக்குற புத்தகம்

👉 Memory:

> 👉 library 😅

---

# 🔥 3️⃣ RISC-V Registers

👉 Book சொல்றது:

> 👉 “32 registers”

---

## 🧠 Meaning

```text
x0 to x31
```

👉 total = 32

---

## 💥 Stored in:

> 👉 Register File (small memory)

---

# ⚙️ 4️⃣ Register File

👉 என்ன இது?

> 👉 registers எல்லாம் சேர்ந்து இருக்கும் small memory

---

## 🧠 Special

* multiported (multiple read/write)
* very fast
* SRAM based

---

# 🔥 5️⃣ Design Principle 3

👉 Book சொல்றது:

> 👉 “Smaller is faster”

---

## 🧠 Meaning

> 👉 “சின்ன memory → வேகமாக access ஆகும்”

---

## 💥 Why?

* less hardware
* less delay
* fast lookup

---

# 🔢 6️⃣ Example (Code 6.4)

---

## 🟢 C code

```c
a = b + c;
```

---

## 🔴 Assembly

```asm
# s0 = a, s1 = b, s2 = c
add s0, s1, s2
```

---

## 🧠 Meaning

```text
s0 = s1 + s2
```

👉 registers use பண்ணுது ✔️

---

# 🔥 7️⃣ Example (Code 6.5 — IMPORTANT)

---

## 🟢 C

```c
a = b + c - d;
```

---

## 🔴 Assembly

```asm
# s0=a, s1=b, s2=c, s3=d, t0=temp
add t0, s1, s2   # t = b + c
sub s0, t0, s3   # a = t - d
```

---

## 🧠 Breakdown

---

### Step 1

```asm
add t0, s1, s2
```

👉 t0 = b + c

---

### Step 2

```asm
sub s0, t0, s3
```

👉 s0 = t0 - d

---

## 💥 Final

```text
a = (b + c) - d
```

---

# 🧠 8️⃣ Temporary registers (VERY IMPORTANT)

👉 t0:

> 👉 temporary storage

---

## 🔥 Why needed?

👉 CPU:

> 👉 one step at a time தான்

---

# 🧠 9️⃣ Register types (quick intro)

👉 RISC-Vல:

| Type      | Example | Use             |
| --------- | ------- | --------------- |
| saved     | s0–s11  | variables       |
| temporary | t0–t6   | intermediate    |
| argument  | a0–a7   | function inputs |

---

# 💥 Big intuition

👉 Registers:

> 👉 “CPU working area”

---

# 🧠 One-line clarity

👉 Register:

> 👉 “CPUக்கு அருகில இருக்கும் fast storage for operands”

---

# 🔥 Ultra summary

* Registers = fast memory
* 32 registers (RISC-V)
* stored in register file
* used for operands
* temp values → t registers
* smaller → faster

---

💬 இப்போ registers concept strongஆ புரிஞ்சிருக்கும் 😎

👉 next level வேண்டுமா?

* full register naming (x0 → zero, ra, sp, etc. 🔥)
* அல்லது calling convention deep

நான் next levelக்கு கொண்டு போகிறேன் 💥
