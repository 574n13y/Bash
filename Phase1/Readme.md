# Phase 1: Beginner Level - Bash Scripting

## 🚀 Topics

* **What is Bash?**
    * Understanding the role of Bash as a command-line interpreter (shell).
    * Briefly explaining its history and prevalence in Unix-like operating systems.
    * Recognizing Bash as a powerful tool for automation and system administration.

* **Basic Shell Commands**
    * **`ls` (list):** Displaying files and directories.
        * Common options: `-l` (long listing), `-a` (all files), `-h` (human-readable sizes), `-r` (reverse order), `-t` (sort by modification time).
    * **`cd` (change directory):** Navigating the file system.
        * Special directories: `.` (current directory), `..` (parent directory), `~` (home directory).
    * **`mkdir` (make directory):** Creating new directories.
        * Common options: `-p` (create parent directories if they don't exist).
    * **`cp` (copy):** Copying files and directories.
        * Common options: `-r` or `-R` (recursive copy for directories).
    * **`mv` (move):** Moving or renaming files and directories.
    * **`rm` (remove):** Deleting files and directories.
        * Common options: `-r` or `-R` (recursive removal for directories), `-f` (force removal, use with caution).
    * **`touch`:** Creating empty files or updating the timestamp of existing files.

* **Variables & User Input**
    * Defining and assigning values to variables.
        * Syntax: `variable_name="value"` (no spaces around `=`).
    * Accessing variable values using `$variable_name` or `${variable_name}`.
    * Understanding variable scope (local and global).
    * Reading user input using the `read` command.
        * Syntax: `read variable_name`.
        * Prompting the user: `read -p "Enter your name: " name`.

* **Conditionals**
    * **`if` statement:** Executing code based on a condition.
        ```bash
        if [ condition ]; then
            # Commands to execute if the condition is true
        fi
        ```
    * **`else` statement:** Providing an alternative block of code to execute if the `if` condition is false.
        ```bash
        if [ condition ]; then
            # Commands if true
        else
            # Commands if false
        fi
        ```
    * **`elif` (else if) statement:** Checking multiple conditions in sequence.
        ```bash
        if [ condition1 ]; then
            # Commands if condition1 is true
        elif [ condition2 ]; then
            # Commands if condition2 is true
        else
            # Commands if neither condition is true
        fi
        ```
    * **`test` expressions:** Evaluating conditions.
        * Using the `test` command or the `[` and `]` (with spaces) syntax.
        * Common tests:
            * File tests: `-f` (regular file), `-d` (directory), `-e` (exists).
            * String comparisons: `=`, `!=`.
            * Numeric comparisons: `-eq` (equal), `-ne` (not equal), `-gt` (greater than), `-lt` (less than), `-ge` (greater than or equal), `-le` (less than or equal).

* **Loops**
    * **`for` loop:** Iterating over a sequence of items.
        ```bash
        for item in item1 item2 ... itemN; do
            # Commands to execute for each item
        done
        ```
        * Iterating over a range: `for i in {1..5}; do ... done`
        * Iterating over command output: `for file in $(ls *.txt); do ... done`
    * **`while` loop:** Executing code as long as a condition is true.
        ```bash
        while [ condition ]; do
            # Commands to execute while the condition is true
        done
        ```
    * **`until` loop:** Executing code until a condition becomes true.
        ```bash
        until [ condition ]; do
            # Commands to execute until the condition is true
        done
        ```

* **Functions**
    * Defining reusable blocks of code.
        ```bash
        function function_name() {
            # Commands within the function
        }
        # Or
        function_name () {
            # Commands within the function
        }
        ```
    * Calling functions: `function_name`.
    * Passing arguments to functions: `function_name arg1 arg2`.
    * Accessing arguments within a function: `$1`, `$2`, `$@`, `$*`.
    * Returning values from functions (using the exit status or by printing output).

* **Script Execution & Permissions**
    * Creating a Bash script file (e.g., `my_script.sh`).
    * Making a script executable using the `chmod` command.
        * `chmod +x my_script.sh` (adds execute permission for the owner).
    * Understanding the shebang line `#!/bin/bash`.
        * Specifying the interpreter to be used for executing the script.
    * Running a script:
        * `./my_script.sh` (executing the script in the current directory).
        * `bash my_script.sh` (explicitly invoking the Bash interpreter).

---
