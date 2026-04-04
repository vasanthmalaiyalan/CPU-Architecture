சூப்பர் 🔥 இப்போ நம்ம **Immediate Operands + Initialization + Large constants (lui)** — full clarityக்கு வந்துட்டோம் 💯
👉 இது real assembly codingல தினமும் use ஆகும் 😎

நான் இதை **step-by-step + intuition + examples + why needed**ல explain பண்ணுறேன்

---

# 🧠 1️⃣ Immediate Operands (recap)

👉 Immediate:

> 👉 “instructionக்குள்ளே இருக்கும் constant value”

---

## 🔢 Example

```asm
addi s0, s0, 4   # a = a + 4
addi s1, s0, -12 # b = a - 12
```

---

## 🧠 Meaning

👉 First line:

```text
s0 = s0 + 4
```

👉 Second line:

```text
s1 = s0 - 12
```

---

## 💥 Insight

👉 register + constant → fast operation ✔️

---

# 🔥 2️⃣ Initialization using immediates

---

## 🟢 High-level

```c
i = 0;
x = 2032;
y = -78;
```

---

## 🔴 Assembly

```asm
addi s4, zero, 0      # i = 0
addi s5, zero, 2032   # x = 2032
addi s6, zero, -78    # y = -78
```

---

# 🧠 Why `zero` register?

👉 `x0 (zero)`:

```text
always = 0
```

---

## 💥 Trick

```text
s4 = 0 + 0
s5 = 0 + 2032
s6 = 0 + (-78)
```

👉 So:

> 👉 register initialize easy ✔️

---

# ⚠️ 3️⃣ Limitation (IMPORTANT 🔥)

👉 Immediate:

```text
12-bit only
```

---

## 🔢 Range

```text
-2048 to +2047
```

---

👉 Example:

```text
2032 ✔️ OK
5000 ❌ NOT possible directly
```

---

# 🚀 4️⃣ Large constants problem

👉 Suppose:

```text
x = 0x12345678
```

👉 இது:

> 👉 32-bit number 😳

👉 addi மட்டும் use பண்ண முடியாது ❌

---

# 🔥 5️⃣ Solution — `lui` instruction

---

## 🧠 What is `lui`?

👉 Book சொல்றது:

> 👉 “Load Upper Immediate”

---

## 🔢 What it does

```text
Upper 20 bits set
Lower 12 bits = 0
```

---

## 💥 Example

```asm
lui t0, 0x12345
```

---

## 🧠 Result

```text
t0 = 0x12345000
```

---

👉 last 12 bits → 0

---

# 🔧 6️⃣ Combine `lui + addi`

👉 Full 32-bit value create பண்ண:

---

## 🔢 Example

```asm
lui t0, 0x12345      # upper
addi t0, t0, 0x678   # lower
```

---

## 🧠 Final value

```text
t0 = 0x12345678
```

---

# 💥 Big idea

👉 Split:

```text
32-bit = upper (20) + lower (12)
```

---

# 🧠 7️⃣ Why design like this?

👉 Reason:

* instruction size fixed (32-bit)
* immediate space limited

---

👉 So:

> 👉 two instructions use பண்ணுறோம்

---

# 🔥 8️⃣ Real example

---

## High-level

```c
x = 500000;
```

---

## Assembly

```asm
lui t0, 122        # upper part
addi t0, t0, 352   # lower part
```

---

# 🧠 9️⃣ Summary intuition

👉 Small number:

```text
addi மட்டும் போதும்
```

👉 Large number:

```text
lui + addi
```

---

# 💥 One-line clarity

👉 Immediate:

> 👉 “small constant direct instructionல”

👉 lui:

> 👉 “big constant create பண்ண use”

---

# 🔥 Ultra summary

* addi → small constants
* zero register → initialize
* limit → 12-bit
* lui → upper 20 bits
* combine → full 32-bit value

---

💬 இப்போ full clear இல்லையா 😎

👉 next level வேண்டுமா?

* `li` pseudo-instruction எப்படி work ஆகுது 🔥
* அல்லது immediate encoding (bit-level machine code)

நான் இன்னும் deep போகலாம் 💥
