சூப்பர் 🔥 இப்போ நீ வந்துட்டே இருக்குறது **Branching (Program decision making)** — இது programmingல மிக முக்கியமான concept 💯

நான் இதை **simple Tamil + intuition + assembly mapping + examples**ல explain பண்ணுறேன் 😎

---

# 🧠 🎯 Book சொல்ல வர்ற core idea

> 👉 **Program order change பண்ணி decision எடுக்க முடியும் → அதுதான் branching**

---

# 🔥 1️⃣ Problem (branch இல்லனா?)

👉 Program:

```text id="l9s6du"
line by line மட்டும் run ஆகும் 😐
```

👉 Example:

```text id="k4p2q1"
1 → 2 → 3 → 4 → 5
```

👉 எந்த condition இருந்தாலும் change ஆகாது ❌

---

# 💥 2️⃣ Branching — என்ன?

👉 Simple:

> 👉 “condition basedா program flow change பண்ணுவது”

---

# 🧠 3️⃣ Real-world intuition

👉 Example:

```c id="7l1zcf"
if (a < b)
    x = 1;
else
    x = 0;
```

---

👉 இது:

> 👉 decision making

---

# 🔥 4️⃣ Assemblyல எப்படி?

---

## 🟢 Step 1 — compare

```asm id="qk7qgh"
slt t0, s0, s1   # a < b ?
```

---

## 🔴 Step 2 — branch

```asm id="kblf8m"
bne t0, x0, TRUE
```

👉 condition trueனா jump

---

# 🧠 5️⃣ PC change (MOST IMPORTANT 🔥)

👉 Normal:

```text id="wrj5x4"
PC = PC + 4
```

---

👉 Branch:

```text id="0b9m2i"
PC = new address 😎
```

---

👉 அதனால்:

> 👉 program flow change ஆகும்

---

# 🔁 6️⃣ Types of branching

---

# 🟢 (A) Conditional branch

👉 condition trueனா மட்டும் jump

---

## 🔢 Examples

```asm id="z1l5hc"
beq s0, s1, LABEL   # equal
bne s0, s1, LABEL   # not equal
blt s0, s1, LABEL   # less than
bge s0, s1, LABEL   # greater/equal
```

---

## 🧠 Meaning

```text id="pj1v2t"
condition check → jump or continue
```

---

# 🔴 (B) Unconditional branch (jump)

👉 always jump

---

## 🔢 Example

```asm id="q5l7c0"
j LABEL
```

---

👉 condition இல்ல ❌

---

# 🔥 7️⃣ Why needed?

👉 Book சொல்றது:

> 👉 “if/else, loops, switch எல்லாம் இதுல தான் build ஆகும்”

---

---

# 🧠 8️⃣ Loop example

---

## C

```c id="v0n9fd"
while (i < 5)
```

---

## Assembly idea

```asm id="7j1l5m"
LOOP:
bge t0, 5, END
addi t0, t0, 1
j LOOP

END:
```

---

👉 repeat 🔁

---

# 💥 9️⃣ Big intuition

👉 Branch:

> 👉 “programக்கு brain மாதிரி”

---

👉 Without branch:

```text id="5qv7x8"
no decision ❌
```

---

👉 With branch:

```text id="0y5bfi"
dynamic execution ✔️
```

---

# 🧠 10️⃣ Visual flow

```text id="z5kxgi"
        condition
        /      \
     TRUE     FALSE
      ↓         ↓
   block1     block2
```

---

# 💥 One-line clarity

👉 Branching:

> 👉 “condition basedா PC change பண்ணி program flow control பண்ணுவது”

---

# 🔥 Ultra summary

* branch → flow change
* conditional → if
* unconditional → jump
* PC change → key
* use → if, loop, switch

---

💬 இப்போ branching concept clear 😎

👉 next level வேண்டுமா?

* branch instructions full detail (`beq`, `bne`, `blt`) 🔥
* அல்லது pipelineல branch எப்படி affect ஆகுது 😏

நான் இன்னும் deeper கொண்டு போகலாம் 💥
