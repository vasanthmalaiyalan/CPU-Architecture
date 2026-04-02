சூப்பர் 🔥 இப்போ வந்துட்டோம் **Hexadecimal (ஹெக்ஸா)** — இது தான் engineers / hackers favorite 😎
நான் இதை super clearஆ explain பண்ணுறேன் 👇

---

# 🧠 1.4.3 Hexadecimal Numbers — Main idea

👉
🔥 **Binary long ஆகும் → அதை short பண்ண Hex use பண்ணுறோம்**

---

# 🔢 Hex digits

👉 Hex (base 16):

```text id="p3n8xq"
0–9 + A–F
```

| Hex | Decimal |
| --- | ------- |
| A   | 10      |
| B   | 11      |
| C   | 12      |
| D   | 13      |
| E   | 14      |
| F   | 15      |

---

# 🧩 Column weights

👉 hex:

```text id="r2i8ws"
16⁰ = 1  
16¹ = 16  
16² = 256  
16³ = 4096
```

---

# 🔥 MOST IMPORTANT RULE

👉

🔥 **1 hex digit = 4 bits (binary)**

---

## 🧠 Mapping table (remember this 🔥)

```text id="kpz7d9"
0000 → 0  
0001 → 1  
0010 → 2  
0011 → 3  
0100 → 4  
0101 → 5  
0110 → 6  
0111 → 7  
1000 → 8  
1001 → 9  
1010 → A  
1011 → B  
1100 → C  
1101 → D  
1110 → E  
1111 → F
```

---

# 🧮 Example 1.3

👉 given:

```text id="ggr5ti"
2ED₁₆
```

---

## 🔹 Hex → Binary

👉 each digit → 4 bits:

```text id="mb85hy"
2 → 0010  
E → 1110  
D → 1101
```

👉 result:

```text id="yr1hfe"
0010 1110 1101₂ ✅
```

---

## 🔹 Hex → Decimal

```text id="2iy2al"
= 2×16² + 14×16¹ + 13×16⁰  
= 2×256 + 14×16 + 13  
= 512 + 224 + 13  
= 749₁₀ ✅
```

---

# 🧮 Example 1.4 (Binary → Hex)

👉 given:

```text id="c8k9yf"
1111010₂
```

---

## 🔹 Step

👉 rightல இருந்து group (4 bits):

```text id="9x36e6"
0111 1010
```

👉 convert:

```text id="nj4m2p"
0111 → 7  
1010 → A
```

👉 result:

```text id="3tzyo2"
7A₁₆ ✅
```

---

# 🧮 Example 1.5 (Decimal → Hex)

👉 given:

```text id="y4h3tb"
333₁₀
```

---

## 🔹 Method 1 (power method)

```text id="dr4hmf"
256 fits → 1  
remaining = 77  

77 ÷ 16 = 4 remainder 13  
13 = D
```

👉 result:

```text id="8g9p3g"
14D₁₆ ✅
```

---

## 🔹 Binary conversion

```text id="o2i8i6"
1 → 0001  
4 → 0100  
D → 1101
```

👉 result:

```text id="9j0k7p"
0001 0100 1101₂ ✅
```

---

## 🔹 Method 2 (divide by 16)

```text id="lqj6e2"
333 ÷ 16 = 20 remainder D  
20 ÷ 16 = 1 remainder 4  
1 ÷ 16 = 0 remainder 1
```

👉 reverse:

```text id="vw4rfv"
14D₁₆ ✅
```

---

# 🧠 Why Hex super useful?

👉 binary:

```text id="rqz7a8"
111011001010 😵
```

👉 hex:

```text id="j1c3k8"
ECA 😎
```

---

# 🎯 Real-world use

👉 memory address:

```text id="8azfmc"
0x7fffabcd
```

👉 debugging, exploit, reverse engineeringல use 🔥

---

# 🧠 Big picture

```text id="f4nlgf"
Binary (machine)
↓
Hex (human-friendly)
↓
Decimal (normal life)
```

---

# 🚀 Final clarity

👉

🔥
**Hex = Binary shortcut**

---

# 🧠 One-line summary

👉
**4 bits = 1 hex digit**

---

# 🚀 Next step

👉

🔥 **1.5 Logic Gates (CPU foundation start)**

---

சொல்லு: **"start gates"** 🚀
