# 200 Bash Scripting Tasks for Cloud Engineers

This document outlines 200 Bash scripting tasks, categorized from basic to intermediate to advanced, suitable for individuals aiming to become proficient in Bash for cloud engineering tasks.

---

## Phase 1: Basic Level (Tasks 1-70)

**Understanding the Basics:**

1.  Print "Hello, Cloud!" to the console.
2.  Print the current date and time.
3.  Display the username of the current user.
4.  Show the current working directory.
5.  Navigate to the `/tmp` directory.
6.  Go back to the previous directory.
7.  Return to the home directory.
8.  List all files and directories in the current directory.
9.  List files with detailed information (permissions, owner, size).
10. List hidden files and directories.
11. Create a new directory named `cloud_scripts`.
12. Create multiple directories at once: `infra`, `monitoring`, `deployment`.
13. Create an empty file named `server.log`.
14. Create multiple empty files: `app.config`, `database.config`.
15. Copy `server.log` to `server.log.backup`.
16. Copy the entire `cloud_scripts` directory to `backup_scripts`.
17. Move `app.config` to the `infra` directory.
18. Rename `database.config` to `db.config`.
19. Remove the empty file `server.log`.
20. Remove the `backup_scripts` directory and its contents. (Use with caution!)
21. Display the content of `app.config`.
22. Display the first 10 lines of `server.log`.
23. Display the last 5 lines of `db.config`.
24. Display the content of `server.log` page by page.
25. Search for the word "error" in `server.log`.
26. Search for lines containing "INFO" in `app.config` (case-insensitive).
27. Count the number of lines in `db.config`.
28. Count the number of files in the current directory.
29. Create a variable named `REGION` and assign it the value `us-east-1`.
30. Print the value of the `REGION` variable.
31. Get user input for a server name and store it in a variable.
32. Print a message using the server name entered by the user.
33. Check if a file named `data.txt` exists.
34. Check if a directory named `logs` exists.
35. Check if a file is readable.
36. Check if a file is writable.
37. Check if a file is executable.
38. Use an `if` statement to print "File exists" if `config.ini` exists.
39. Use an `if-else` statement to print whether a given number is positive or non-positive.
40. Use `elif` to check if a status code is 200, 404, or something else.
41. Use the `test` command to check if a string is empty.
42. Use the `test` command to compare two numbers.
43. Create a `for` loop to print numbers from 1 to 5.
44. Create a `for` loop to iterate over a list of cloud providers: AWS, Azure, GCP.
45. Create a `for` loop to process all `.log` files in the current directory.
46. Create a `while` loop that counts down from 10 to 1.
47. Create a `while` loop that reads lines from a file until the end is reached.
48. Create an `until` loop that continues until a specific file is created.
49. Define a function named `greet` that prints "Hello!".
50. Call the `greet` function.
51. Define a function `check_file` that takes a filename as an argument and checks if it exists.
52. Call the `check_file` function with `my_file.txt` as an argument.
53. Create a script named `my_script.sh` that prints "Script executed!".
54. Make `my_script.sh` executable.
55. Run `my_script.sh`.
56. Add the shebang line `#!/bin/bash` to `my_script.sh`.
57. Execute `my_script.sh` using `./my_script.sh`.
58. Create a script that takes a filename as a command-line argument and prints its content.
59. Create a script that takes two numbers as arguments and prints their sum.
60. Redirect the output of the `ls` command to a file named `file_list.txt`.
61. Append the output of the `date` command to `file_list.txt`.
62. Redirect the error output of a non-existent command to `error.log`.
63. Pipe the output of `cat server.log` to `grep "warning"`.
64. Pipe the output of `ls -l` to `grep "^-"` to list only files.
65. Create a script that prompts the user for confirmation before deleting a file.
66. Create a script that backs up all `.conf` files in a directory to a `backup` subdirectory.
67. Create a script to monitor disk space and print a warning if it's below a certain threshold.
68. Create a script to check the status of a web server using `curl`.
69. Create a script to ping a list of IP addresses and report their reachability.
70. Write a script that creates a user account (you might need `sudo` for this, be cautious).

---

## Phase 2: Intermediate Level (Tasks 71-140)

**Advanced File Operations and Text Processing:**

71. Find all files larger than 1MB in the `/var/log` directory.
72. Find all files modified in the last 24 hours.
73. Find and delete all `.tmp` files recursively. (Use with extreme caution!)
74. Extract all unique IP addresses from an Apache access log.
75. Count the occurrences of each HTTP status code in an Nginx access log.
76. Replace all occurrences of "localhost" with "127.0.0.1" in a configuration file.
77. Delete all blank lines from a text file.
78. Extract specific columns (e.g., timestamp and request method) from a web server log using `awk`.
79. Calculate the total size of all files in a directory using `du` and `awk`.
80. Sort the lines of a file alphabetically.
81. Remove duplicate lines from a file.
82. Split a large file into smaller files of a specific size.
83. Compare two files and output the differences.
84. Apply a patch file to a configuration file.
85. Create an archive of a directory using `tar`.
86. Extract the contents of a `tar.gz` archive.
87. Compress a file using `gzip`.
88. Decompress a `.gz` file.
89. Use `sed` to insert a line at the beginning of a file.
90. Use `sed` to append a line at the end of a file.

**Process Management and System Information:**

91. List all running processes owned by a specific user.
92. Find the process ID (PID) of a process by its name (e.g., `nginx`).
93. Kill a process by its PID.
94. Kill all processes with a specific name. (Use with caution!)
95. Monitor the CPU and memory usage of the top 5 processes in real-time using `top`.
96. Write a script to automatically restart a failed service.
97. Get the hostname and IP address of the current machine.
98. Display the amount of free and used memory.
99. Display the disk space usage for all mounted file systems.
100. Get the system uptime.

**Scheduling with Cron:**

101. Schedule a script to run every day at midnight.
102. Schedule a script to run every hour.
103. Schedule a script to run every Monday at 9 AM.
104. Schedule a script to run on the 15th of every month.
105. Redirect the output of a cron job to a log file.
106. Prevent email notifications from a cron job.
107. List all cron jobs for the current user.
108. Remove a specific cron job.
109. Create a script that adds a new cron job to back up a directory daily.
110. Create a script that checks if a cron job ran successfully by examining its log file.

**Environment Variables and Profiles:**

111. Set an environment variable temporarily in the current shell.
112. Set an environment variable permanently for the current user.
113. Add a directory to the `PATH` environment variable temporarily.
114. Add a directory to the `PATH` environment variable permanently.
115. Create an alias for a frequently used command.
116. Define a custom function in your `.bashrc` or `.bash_profile`.
117. Understand the order in which Bash profile files are loaded.
118. Create a script that reads environment variables for cloud credentials (e.g., `AWS_ACCESS_KEY_ID`).
119. Use `.env` files and `source` them in a script.
120. Write a script to switch between different sets of environment variables.

**Basic Cloud CLI Interaction (Simulated or Local):**

121. Simulate listing "instances" (e.g., by listing files in a directory).
122. Simulate starting an "instance" (e.g., by creating an empty file).
123. Simulate stopping an "instance" (e.g., by deleting a file).
124. Simulate getting the "status" of an "instance" (e.g., by checking if a file exists).
125. Create a script to simulate deploying a simple "application" (e.g., copying files to a target directory).

**Error Handling and Script Logic:**

126. Use `set -e` to make a script exit immediately on error.
127. Use `set -x` to debug a script by showing executed commands.
128. Implement basic error checking in a script (e.g., checking if a command succeeded).
129. Use `if` statements to handle different scenarios based on command exit codes.
130. Use the `trap` command to handle script termination signals (e.g., `Ctrl+C`).
131. Create a script that logs errors to a separate log file.
132. Implement a retry mechanism for a potentially failing command.
133. Validate user input in a script.
134. Create a script that checks for dependencies before running.
135. Write a script that uses a configuration file to define settings.
136. Parse command-line options using `getopt` or similar methods.
137. Create a simple menu-driven script.
138. Write a script that uses a loop to perform an action on multiple files or resources.
139. Implement a basic locking mechanism to prevent concurrent execution of a script.
140. Write a script that sends an email notification upon completion or failure.

---

## Phase 3: Advanced Level (Tasks 141-200)

**Cloud CLI Integration (AWS CLI, Azure CLI, gcloud - Assuming you have access and credentials configured):**

141. Use AWS CLI to list all EC2 instances in a specific region.
142. Use AWS CLI to start and stop an EC2 instance by its ID.
143. Use AWS CLI to get details about a specific S3 bucket.
144. Use AWS CLI to upload a file to an S3 bucket.
145. Use AWS CLI to list all IAM users.
146. Use Azure CLI to list all resource groups.
147. Use Azure CLI to create and delete a virtual machine.
148. Use Azure CLI to list storage accounts.
149. Use Azure CLI to create a blob container.
150. Use gcloud to list all compute instances in a project.
151. Use gcloud to create and delete a firewall rule.
152. Use gcloud to list all Cloud Storage buckets.
153. Use gcloud to deploy a Cloud Function.
154. Write a script to automate the backup of EC2 volumes using AWS CLI.
155. Write a script to deploy a static website to S3 using AWS CLI.
156. Write a script to create a new Azure Container Registry using Azure CLI.
157. Write a script to deploy an ARM template using Azure CLI.
158. Write a script to create a new Google Compute Engine instance with specific configurations using `gcloud`.
159. Write a script to automate database backups to Google Cloud Storage using `gcloud`.
160. Parse JSON output from cloud CLIs using `jq` to extract specific information.

**Automating Infrastructure (e.g., Terraform with Bash - Assuming Terraform is installed):**

161. Write a Bash script to initialize a Terraform project (`terraform init`).
162. Write a Bash script to run `terraform plan` and save the output.
163. Write a Bash script to apply the Terraform configuration (`terraform apply --auto-approve`).
164. Write a Bash script to destroy the Terraform managed infrastructure (`terraform destroy --auto-approve`).
165. Create a Bash script that takes environment names (dev, staging, prod) as input and applies the corresponding Terraform configuration.
166. Dynamically generate Terraform variable files (`.tfvars`) using Bash based on environment.
167. Use Bash to loop through a list of regions and deploy infrastructure using Terraform in each region.
168. Extract output values from Terraform and use them in subsequent Bash commands.
169. Implement error handling for Terraform commands within a Bash script.
170. Create a script to automatically update Terraform providers.

**Networking Tools:**

171. Use `ping` to check the latency to multiple hosts and report the average.
172. Use `curl` to download a file and check its HTTP status code.
173. Use `curl` to send a POST request to an API endpoint with JSON data.
174. Use `curl` to interact with an API that requires authentication (e.g., Basic Auth, API keys).
175. Use `netstat` (or `ss`) to list all listening ports on a server.
176. Use `netstat` (or `ss`) to find the process using a specific port.
177. Write a script to check if a list of ports is open on a remote host using `nc` or `nmap`.
178. Use `dig` or `nslookup` to query DNS records.
179. Automate network diagnostics by combining `ping`, `traceroute`, and `netstat`.
180. Write a script to monitor network interface statistics.

**APIs with curl and jq:**

181. Fetch data from a public REST API using `curl`.
182. Parse specific data fields from a JSON API response using `jq`.
183. Send a PUT request to update a resource via an API using `curl` and `jq`.
184. Send a DELETE request to remove a resource via an API.
185. Implement pagination handling when fetching data from APIs.
186. Handle different HTTP response codes in your API interaction scripts.
187. Securely pass API keys or tokens using environment variables or other secure methods with `curl`.
188. Construct complex JSON payloads for API requests using Bash string manipulation or external tools.
189. Write a script to monitor the status of multiple API endpoints.
190. Transform data retrieved from one API and send it to another.

**Error Handling and Debugging (Advanced):**

191. Implement custom error messages and logging with timestamps.
192. Use `trap` to handle specific signals like `SIGINT` and perform cleanup actions.
193. Create a robust error handling function that takes an error message and exit code.
194. Use conditional debugging output based on a script argument or environment variable.
195. Implement a rollback mechanism in case of script failure during critical operations.
196. Use `set -o pipefail` to ensure that a script exits if any command in a pipeline fails.
197. Write a script to automatically collect and report error logs.
198. Use ` shellcheck` to statically analyze your Bash scripts for potential issues.

**Creating Reusable Bash Libraries:**

199. Create a library of common functions for string manipulation, file operations, and API interactions in separate `.sh` files and source them in your main scripts.
200. Develop a modular Bash framework for deploying and managing cloud resources, utilizing functions and configuration files for reusability and maintainability.

---
