## ⚙️ Phase 2: Intermediate Level – Bash Scripting

### 📂 Topics & Examples

---

### 📁 File and Directory Operations

**Reading file content:**
```bash
cat myfile.txt
head -n 5 myfile.txt
tail -n 10 myfile.txt
```

**Loop through all `.log` files in a directory:**
```bash
for file in *.log
do
  echo "Processing $file"
done
```

**Check if a file exists:**
```bash
if [ -f /etc/passwd ]; then
  echo "File exists."
fi
```

---

### 📊 Parsing Logs (e.g., Apache, Nginx)

**Extract all error messages:**
```bash
grep "error" /var/log/nginx/error.log
```

**Extract IP addresses from access logs:**
```bash
awk '{print $1}' /var/log/nginx/access.log | sort | uniq -c | sort -nr
```

---

### 🧰 Working with `awk`, `sed`, `grep`

**`grep`: Find lines matching a pattern**
```bash
grep "Failed" auth.log
```

**`awk`: Extract specific columns**
```bash
awk '{print $1, $3}' file.txt
```

**`sed`: Replace text in a file**
```bash
sed 's/old/new/g' file.txt
```

---

### 🔍 Process Management

**View running processes:**
```bash
ps aux
```

**Kill a process by PID:**
```bash
kill 1234
```

**Monitor in real-time:**
```bash
top
```

---

### ⏰ Using `cron` for Scheduling

**Edit crontab:**
```bash
crontab -e
```

**Example: Run script every day at midnight**
```
0 0 * * * /home/user/backup.sh
```

**List scheduled cron jobs:**
```bash
crontab -l
```

---

### 🌍 Environment Variables and Profiles

**Temporary variable (only in current session):**
```bash
export APP_ENV=production
```

**Persistent variable (add to `~/.bashrc` or `~/.bash_profile`):**
```bash
echo "export APP_ENV=production" >> ~/.bashrc
source ~/.bashrc
```

**View all environment variables:**
```bash
printenv
```

---


