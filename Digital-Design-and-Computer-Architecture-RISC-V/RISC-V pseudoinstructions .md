சூப்பர் 🔥 இப்போ நீ **RISC-V Pseudoinstructions** வந்துட்டே — இது beginners க்கு confusing ஆனாலும் easy concept தான்!

நான் full clear ஆ explain பண்ணுறேன் 👇

---

# 🧠 Pseudoinstruction என்றால் என்ன?

![alt text](<Screenshot 2026-04-01 214516-1.png>)

👉 இது **real CPU instruction இல்ல**
👉 இது **shortcut / alias**

### 🎯 meaning:

👉 programmer easyஆ எழுத
👉 assembler அதை **real instructionஆ convert பண்ணும்**

---

## 🔥 Example:

```asm
li x1, 10
```

👉 இது real instruction இல்ல ❌
👉 actually:

```asm
addi x1, x0, 10
```

👉 CPUக்கு போவது இதுதான் ✅

---

# 📦 Important Pseudoinstructions (easy Tamil)

---

## 🔹 1. `nop` (No operation)

```asm
nop
```

👉 nothing செய்யாது 😄

👉 actual:

```asm
addi x0, x0, 0
```

---

## 🔹 2. `li` (Load Immediate)

```asm
li x1, 10
```

👉 x1 = 10

👉 internally:

```asm
addi x1, x0, 10
```

---

## 🔹 3. `mv` (Move)

```asm
mv x1, x2
```

👉 x1 = x2

👉 actual:

```asm
addi x1, x2, 0
```

---

## 🔹 4. `not`

```asm
not x1, x2
```

👉 bit reverse

👉 actual:

```asm
xori x1, x2, -1
```

---

## 🔹 5. `neg`

```asm
neg x1, x2
```

👉 x1 = -x2

👉 actual:

```asm
sub x1, x0, x2
```

---

# ⚖️ Condition set instructions

## 🔹 `seqz`

```asm
seqz x1, x2
```

👉 x2 == 0 → x1 = 1
👉 இல்லனா → x1 = 0

---

## 🔹 `snez`

👉 x2 != 0

---

## 🔹 `sltz`

👉 x2 < 0

---

## 🔹 `sgtz`

👉 x2 > 0

---

# 🔀 Branch (if conditions)

---

## 🔹 `beqz`

```asm
beqz x1, label
```

👉 if x1 == 0 → jump

👉 actual:

```asm
beq x1, x0, label
```

---

## 🔹 `bnez`

👉 if x1 != 0

---

## 🔹 `blez`

👉 ≤ 0

---

## 🔹 `bgez`

👉 ≥ 0

---

## 🔹 `bltz`, `bgtz`

👉 < 0 / > 0

---

# 🔁 Jump instructions

---

## 🔹 `j`

```asm
j label
```

👉 direct jump

👉 actual:

```asm
jal x0, label
```

---

## 🔹 `jal`

👉 jump + return address save

---

## 🔹 `jr`

```asm
jr x1
```

👉 jump to register

👉 actual:

```asm
jalr x0, x1, 0
```

---

## 🔹 `ret`

```asm
ret
```

👉 function return

👉 actual:

```asm
jalr x0, ra, 0
```

---

# 📞 Function calls

---

## 🔹 `call`

```asm
call func
```

👉 function call

👉 actual:

```asm
jal ra, func
```

---

# 📍 Address loading

---

## 🔹 `la`

```asm
la x1, var
```

👉 address load

👉 actual:

```asm
auipc + addi combo
```

---

# 📥 Load / Store global

---

## 🔹 `lw`, `sw` (symbol version)

👉 global variables access

---

# ⚙️ CSR (Control registers)

---

## 🔹 `csrr`

👉 read system register

---

## 🔹 `csrw`

👉 write system register

---

# 🧠 முக்கிய புரிதல்

👉 Pseudoinstruction:

| Type             | Meaning           |
| ---------------- | ----------------- |
| Real instruction | CPU execute       |
| Pseudo           | assembler convert |

---

# 🔥 Real flow

```text
Your code (pseudo)
   ↓
Assembler
   ↓
Real instructions
   ↓
Machine code
   ↓
CPU execute
```

---

# 🎯 Why important?

👉 reverse engineering
👉 exploit dev
👉 assembly reading easy

---

# ⚡ Final clarity

👉 `li`, `mv`, `ret` போன்றவை:

❌ CPUக்கு தெரியாது
✅ assembler convert பண்ணும்

---

# 🚀 Next level (VERY IMPORTANT 🔥)

👉 நான் explain பண்ணலாமா:

**"Assembly → Binary (funct3, opcode எப்படி build ஆகுது)"**

👉 இது தான் real low-level mastery 😎

சொல்லு: **"machine code explain"** 🚀
