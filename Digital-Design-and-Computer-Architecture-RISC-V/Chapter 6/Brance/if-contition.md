சூப்பர் 🔥 இது தான் **High-level `if` → Assembly translation** core 💯
👉 இந்த paragraph என்ன சொல்லுது என்பதை **straight intuition + step-by-step execution**ல explain பண்ணுறேன் 😎

---

# 🧠 🎯 Book சொல்ல வர்ற main idea

> 👉 **Assemblyல “if condition TRUEனா execute” directா எழுத மாட்டாங்க ❌**
> 👉 அதுக்கு பதிலா **“condition FALSEனா skip பண்ணு”** என்று எழுதுவாங்க ✔️

---

# 🔥 1️⃣ High-level code

```c
if (apples == oranges)
    f = g + h;

apples = oranges - h;
```

---

## 🧠 Meaning

👉 condition trueனா மட்டும்:

```text
f = g + h
```

👉 அதுக்குப் பிறகு:

```text
apples = oranges - h   (always run)
```

---

# 💥 2️⃣ Assembly code

```asm
bne s0, s1, L1     # if apples != oranges → skip
add s2, s3, s4     # f = g + h

L1:
sub s0, s1, s4     # apples = oranges - h
```

---

# 🧠 3️⃣ Registers mapping

| Variable | Register |
| -------- | -------- |
| apples   | s0       |
| oranges  | s1       |
| f        | s2       |
| g        | s3       |
| h        | s4       |

---

# 🔥 4️⃣ முக்கிய trick (VERY IMPORTANT)

👉 High-level:

```text
if (A == B)
```

👉 Assembly:

```text
if (A != B) → skip 😎
```

---

👉 ஏன்?

> 👉 branch instruction → jump only when condition TRUE

---

👉 So:

> 👉 “if block execute செய்ய வேண்டாம் என்ற condition use பண்ணுறாங்க”

---

# 🧠 5️⃣ Step-by-step execution

---

## 🟢 Case 1: apples == oranges

---

### Step

```text
bne → FALSE ❌ (because equal)
```

👉 branch NOT taken

---

👉 Next:

```text
add run ஆகும் ✔️
```

---

👉 Final:

```text
f = g + h
apples = oranges - h
```

---

## 🔴 Case 2: apples != oranges

---

### Step

```text
bne → TRUE ✔️
```

👉 branch taken

---

👉 jump:

```text
skip add
```

---

👉 Final:

```text
only apples = oranges - h
```

---

# 💥 6️⃣ Visual flow

```text
        bne
       /    \
   TRUE     FALSE
   ↓          ↓
 skip add   run add
      \      /
        L1
         ↓
       sub
```

---

# 🧠 7️⃣ Big intuition

👉 Assembly logic:

> 👉 “condition satisfy ஆகலனா skip பண்ணு”

---

👉 Not:

```text
if TRUE → do
```

👉 But:

```text
if FALSE → skip
```

---

# 💥 8️⃣ Why this design?

👉 Because:

* branch = jump instruction
* jump → skip easy

---

👉 So:

> 👉 “skip model” use பண்ணுறாங்க

---

# 🧠 9️⃣ One-line clarity

👉 Assembly if:

> 👉 “condition failனா block skip பண்ணுறது”

---

# 🔥 Ultra summary

* high-level → if (condition)
* assembly → opposite condition check
* bne → skip
* label → next code
* branch taken → skip block
* branch not taken → execute block

---

💬 இப்போ இது புரிஞ்சா 🔥
👉 if statements assemblyல எப்படி work ஆகுது full clear 😎

---

👉 next level வேண்டுமா?

* full **if-else** translation 🔥
* அல்லது nested if + loop

நான் இன்னும் deeper கொண்டு போகலாம் 💥
