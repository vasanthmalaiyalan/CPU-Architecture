சூப்பர் 🔥 இது தான் **Conditional Branches + Jump** full core 💯
👉 இந்த whole section என்ன சொல்லுது என்பதை **clean + step-by-step execution intuition**ல புரிய வைக்கிறேன் 😎

---

# 🧠 🎯 Book சொல்ல வர்ற core idea

> 👉 **Condition check பண்ணி program flow change பண்ணலாம் (branch) + direct jump செய்யலாம்**

---

# 🔥 1️⃣ Conditional Branch Instructions (6 types)

👉 Book list:

---

## 🟢 Equal / Not equal

```asm
beq  s0, s1, label   # equalனா jump
bne  s0, s1, label   # not equalனா jump
```

---

## 🔵 Comparison (signed)

```asm
blt  s0, s1, label   # less than
bge  s0, s1, label   # greater/equal
```

---

## 🔴 Comparison (unsigned)

```asm
bltu s0, s1, label
bgeu s0, s1, label
```

---

## 🧠 Meaning

👉 2 registers compare பண்ணும் → TRUEனா jump

---

# 💥 2️⃣ Label என்ன?

👉 Example:

```asm
target:
```

---

👉 Meaning:

> 👉 “இந்த இடத்துக்கு jump பண்ணு”

---

👉 Internally:

```text
label = memory address
```

---

# 🔥 3️⃣ Example 6.12 — beq (branch taken)

---

## Code

```asm
addi s0, zero, 4
addi s1, zero, 1
slli s1, s1, 2
beq  s0, s1, target

addi s1, s1, 1
sub  s1, s1, s0

target:
add  s1, s1, s0
```

---

## 🧠 Step-by-step

---

### Step 1

```text
s0 = 4
s1 = 1
```

---

### Step 2

```text
s1 = 1 << 2 = 4
```

---

### Step 3

```text
beq s0, s1 → 4 == 4 ✔️
```

---

👉 🔥 Branch taken

---

## 🚨 Result

```text
skip:
addi
sub
```

👉 direct jump:

```text
target:
add s1, s1, s0
```

---

👉 Final:

```text
s1 = 4 + 4 = 8
```

---

# 💥 4️⃣ Example 6.13 — bne (branch NOT taken)

---

## Code

```asm
addi s0, zero, 4
addi s1, zero, 1
slli s1, s1, 2
bne  s0, s1, target

addi s1, s1, 1
sub  s1, s1, s0

target:
add s1, s1, s0
```

---

## 🧠 Step-by-step

---

### Step 1

```text
s0 = 4
s1 = 4
```

---

### Step 2

```text
bne → 4 != 4 ❌
```

---

👉 🔴 Branch NOT taken

---

## 🚨 Result

👉 All instructions execute:

```text
s1 = 4 + 1 = 5
s1 = 5 - 4 = 1
s1 = 1 + 4 = 5
```

---

# 🔥 5️⃣ Jump (Unconditional)

---

## Instruction

```asm
j target
```

---

## 🧠 Meaning

👉 condition இல்ல ❌

👉 direct jump ✔️

---

## Example

```asm
j target

srai s1, s1, 2
addi s1, s1, 1
sub  s1, s1, s0

target:
add s1, s1, s0
```

---

## 💥 Result

👉 skipped:

```text
srai
addi
sub
```

👉 only:

```text
add run ஆகும்
```

---

# 🧠 6️⃣ Big intuition

---

## Conditional branch

```text
if (condition)
    jump
else
    continue
```

---

## Jump

```text
always jump
```

---

# 💥 7️⃣ PC behaviour (IMPORTANT 🔥)

---

## Normal

```text
PC = PC + 4
```

---

## Branch taken

```text
PC = label address
```

---

👉 அதனால் flow change

---

# 🧠 8️⃣ Visual flow

```text
        beq
       /    \
    TRUE    FALSE
     ↓         ↓
  jump       next line
```

---

# 💥 One-line clarity

👉 Conditional branch:

> 👉 “condition trueனா PC change ஆகும்”

👉 Jump:

> 👉 “always PC change ஆகும்”

---

# 🔥 Ultra summary

* beq → equal
* bne → not equal
* blt/bge → signed compare
* bltu/bgeu → unsigned
* label → target location
* jump → unconditional
* branch → conditional

---

💬 இப்போ branching fully unlocked 😎🔥

👉 next level வேண்டுமா?

* real if/else full program assembly
* அல்லது loop + array combine example

நான் இன்னும் advanced levelக்கு கொண்டு போகலாம் 💥
