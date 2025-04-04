# Phase 2: Intermediate Level - Bash Scripting

## ⚙️ Topics

* **File and Directory Operations (Advanced)**
    * **Finding files:** Using the `find` command with various options (name, type, size, modification time, permissions).
        * Examples: `find . -name "*.txt"`, `find /var/log -type f -mtime -7`.
    * **File manipulation:**
        * Using `cat`, `head`, `tail`, `less`, `more` for viewing file content.
        * Redirecting input and output (`>`, `>>`, `<`).
        * Piping output to other commands (`|`).
        * Using `cut` to extract specific columns from files.
        * Using `paste` to combine lines from multiple files.
        * Using `diff` and `patch` for comparing and applying changes to files.
    * **Directory manipulation:**
        * Using `tree` to display directory structures.
        * Using `du` to estimate file space usage.
        * Using `df` to display disk space usage.
        * Creating and managing temporary files and directories with `mktemp`.
    * **File permissions and ownership:** Understanding `chmod`, `chown`, and `chgrp`.

* **Parsing Logs (e.g., Apache, Nginx)**
    * Understanding common log file formats (e.g., Common Log Format, Combined Log Format).
    * Using `grep` to filter log lines based on specific patterns (IP addresses, dates, HTTP status codes, user agents).
        * Regular expressions with `grep` (`-E` or `egrep`).
    * Using `awk` to process log files, extract fields, and perform calculations (e.g., counting requests, calculating traffic).
    * Using `sed` to perform in-place or streamed edits on log files (e.g., replacing strings, deleting lines).
    * Combining `grep`, `awk`, and `sed` for complex log analysis.
    * Examples:
        * Script to find all 404 errors in an Apache access log.
        * Script to count the number of requests per IP address in an Nginx access log.
        * Script to extract specific information from a custom application log file.

* **Working with awk, sed, grep**
    * **`grep` (Global Regular Expression Print):**
        * Basic usage for searching patterns in files.
        * Options: `-i` (ignore case), `-v` (invert match), `-c` (count matches), `-n` (print line numbers), `-r` (recursive search).
        * Advanced regular expression usage.
    * **`sed` (Stream EDitor):**
        * Basic syntax for substitution (`s`), deletion (`d`), and printing (`p`).
        * Using regular expressions for pattern matching in `sed`.
        * In-place editing (`-i` option).
        * Using multiple `sed` commands.
    * **`awk`:**
        * Understanding the basic structure of an `awk` script (`pattern { action }`).
        * Field manipulation (`$1`, `$2`, etc.) and field separators (`-F`).
        * Using built-in variables (e.g., `NR`, `NF`).
        * Conditional statements and loops within `awk`.
        * Performing calculations and generating reports with `awk`.

* **Process Management with ps, kill, top**
    * **`ps` (process status):** Displaying information about running processes.
        * Common options: `aux` (display all users, all processes, and more details), `ef` (display every process on the system).
        * Filtering processes using `grep` with `ps`.
        * Understanding key columns in `ps` output (PID, USER, %CPU, %MEM, COMMAND).
    * **`top` and `htop`:** Interactive process monitoring tools.
        * Observing real-time system resource usage (CPU, memory, swap).
        * Identifying resource-intensive processes.
        * Using interactive commands within `top` (e.g., sorting, filtering, killing processes).
    * **`kill`:** Sending signals to processes.
        * Basic usage: `kill PID` (sends SIGTERM).
        * Common signals: `SIGKILL` (9, force kill), `SIGHUP` (1, reload configuration), `SIGINT` (2, interrupt).
        * Using `pkill` and `killall` to kill processes by name.
    * **Managing background processes:**
        * Starting processes in the background (`&`).
        * Using `jobs` to list background jobs.
        * Bringing background jobs to the foreground (`fg`).
        * Stopping background jobs (`bg`).

* **Using cron for Scheduling**
    * Understanding the `cron` daemon and its purpose for automating tasks.
    * Editing the crontab file using `crontab -e`.
    * Understanding the crontab syntax: `minute hour day_of_month month day_of_week command`.
    * Specifying time and date patterns (e.g., `*`, specific values, ranges, steps).
    * Redirecting output from cron jobs.
    * Managing user crontabs and the system crontab.
    * Best practices for scheduling tasks with cron.
    * Examples:
        * Scheduling a script to run daily at a specific time.
        * Scheduling a script to run every hour.
        * Scheduling a script to run on specific days of the week.

* **Environment Variables and Profiles**
    * Understanding the concept of environment variables and their role in configuring the shell and applications.
    * Viewing existing environment variables using `env` and `printenv`.
    * Setting and unsetting environment variables using `export`.
    * Understanding the difference between local and exported variables.
    * Understanding shell profile files (`.bashrc`, `.bash_profile`, `.zshrc`, etc.) and their purpose.
    * Customizing the shell environment by modifying profile files (aliases, functions, PATH).
    * Understanding the order in which profile files are loaded.
    * Using `.env` files and tools like `dotenv` for managing application-specific environment variables.

---
