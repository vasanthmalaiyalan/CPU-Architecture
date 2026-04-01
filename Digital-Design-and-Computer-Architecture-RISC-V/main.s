.section .text
.global _start

_start:
   li x1, 5
   li x2, 3
   add x3, x1, x2

   # exit
   li a7, 93
   li a0, 0
   ecall

   /*
   சூப்பர் 🔥 இப்போ நீ OS + syscall level வந்துட்டே — இது ரொம்ப important!

நீ கேட்ட code:

# exit
li a7, 93
li a0, 0
ecall

👉 இதை step-by-step simpleஆ புரிஞ்சிக்கலாம் 👇

🧠 Overall meaning (1 line)

👉
“Program முடிஞ்சுச்சு → OSக்கு சொல்லு → cleanஆ exit ஆகு”

🧩 Line-by-line explanation
🔹 li a7, 93

👉 meaning:

👉 system call number set பண்ணுறது

👉 a7 register:

✔️ syscall number store பண்ணும்

👉 93 என்றால்:

👉 exit syscall

🔹 li a0, 0

👉 meaning:

👉 exit code

👉 a0:

✔️ argument register

👉 0 என்றால்:

✔️ success (no error)

🔹 ecall

👉 MOST IMPORTANT 🔥

👉 meaning:

👉
“OS (Linux)க்கு control கொடு”

⚙️ Full flow
Program running
   ↓
li a7, 93   (exit syscall number)
li a0, 0    (exit code)
   ↓
ecall
   ↓
OS kernel handle
   ↓
Program terminate ✅
🧠 Simple analogy

👉 imagine:

நீ → program
OS → boss 👨‍💼

👉 நீ சொல்ற:

👉 “Boss, நான் வேலை முடிச்சுட்டேன் 😄”

👉 boss:

👉 “சரி, close பண்ணிக்கோ”

⚡ Why இது தேவையா?

👉 இது இல்லனா:

❌ program hang ஆகும்
❌ infinite loop மாதிரி இருக்கும்

👉 OSக்கு தெரியாது program முடிஞ்சது

🔥 Important insight

👉 இது same concept:

Cல → return 0;
Linuxல → exit(0);

👉 assemblyல:

👉 இந்த 3 lines 🔥

🎯 Final clarity
Line	Meaning
li a7, 93	exit syscall
li a0, 0	success code
ecall	OSக்கு call
🚀 Next level (VERY IMPORTANT)

👉 நீ இப்போ syscall புரிஞ்சிட்டே 😎

👉 நான் next explain பண்ணலாமா:

"printf எப்படி work ஆகுது assemblyல?" (deep OS + libc 🔥)

சொல்லு: "printf explain" 🚀
   */