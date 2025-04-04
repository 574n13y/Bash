
## 🚀 Phase 1: Beginner Level – Bash Scripting

### 📂 Topics & Examples

---

### ✅ What is Bash?
**Bash** (Bourne Again SHell) is a Unix shell and command language used as the default shell on Linux and macOS systems. It allows users to execute commands, automate tasks, and write shell scripts.

---

### 🧰 Basic Shell Commands

These are essential for navigating and managing files and directories:

| Command | Description |
|--------|-------------|
| `ls`   | List files in a directory |
| `cd`   | Change directory |
| `mkdir` | Make new directory |
| `cp` | Copy files or directories |
| `mv` | Move/rename files |
| `rm` | Remove files/directories |
| `touch` | Create an empty file |

🧪 **Try:**
```bash
mkdir project
cd project
touch script.sh
ls -l
```

---

### 🧮 Variables & User Input

**Variables:**
```bash
name="CloudEngineer"
echo "Hello, $name"
```

**User Input:**
```bash
echo "Enter your name:"
read name
echo "Welcome, $name!"
```

---

### 🔁 Conditionals

**Basic `if` statements:**
```bash
num=10
if [ $num -gt 5 ]; then
  echo "Number is greater than 5"
fi
```

**`if-else` structure:**
```bash
read -p "Enter a number: " n
if [ $n -ge 18 ]; then
  echo "You are eligible"
else
  echo "Not eligible"
fi
```

**`elif` example:**
```bash
read -p "Enter a number: " n
if [ $n -gt 0 ]; then
  echo "Positive"
elif [ $n -lt 0 ]; then
  echo "Negative"
else
  echo "Zero"
fi
```

---

### 🔁 Loops

**For loop:**
```bash
for i in 1 2 3
do
  echo "Value: $i"
done
```

**While loop:**
```bash
count=1
while [ $count -le 3 ]
do
  echo "Count: $count"
  ((count++))
done
```

**Until loop:**
```bash
count=1
until [ $count -gt 3 ]
do
  echo "Count: $count"
  ((count++))
done
```

---

### 🧱 Functions

**Defining and calling a function:**
```bash
greet() {
  echo "Hello, $1!"
}

greet "CloudUser"
```

---

### 🔒 Script Execution & Permissions

1. Start script with shebang line:
   ```bash
   #!/bin/bash
   ```

2. Make it executable:
   ```bash
   chmod +x script.sh
   ```

3. Run it:
   ```bash
   ./script.sh
   ```
---

