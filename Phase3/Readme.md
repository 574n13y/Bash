# Phase 3: Advanced Level - Bash Scripting

## 📂 Topics

* **Cloud CLI Integration (AWS CLI, Azure CLI, gcloud)**
    * Interacting with cloud services programmatically using their respective CLIs.
    * Automating common cloud tasks (e.g., instance management, storage operations).
    * Authenticating and managing credentials for cloud CLIs within Bash scripts.
    * Parsing output from cloud CLIs using tools like `jq` and `grep`.
    * Examples:
        * Starting and stopping EC2 instances using AWS CLI.
        * Creating and deleting Azure Resource Groups using Azure CLI.
        * Deploying and managing Google Cloud Functions using `gcloud`.

* **Automating Infrastructure (e.g., Terraform with Bash)**
    * Integrating Terraform commands within Bash scripts for infrastructure automation.
    * Dynamically generating Terraform configuration files or variables using Bash.
    * Orchestrating Terraform workflows (init, plan, apply, destroy) with Bash scripts.
    * Handling Terraform output and state management within Bash.
    * Examples:
        * Creating a script to deploy a basic web server using Terraform.
        * Automating the creation of multiple environments (dev, staging, prod) with Terraform and Bash.

* **Networking Tools (ping, curl, netstat)**
    * Using `ping` to check network connectivity and latency.
    * Leveraging `curl` for making HTTP requests, interacting with web services, and downloading files.
    * Employing `netstat` (or `ss`) to analyze network connections, routing tables, interface statistics, and listening ports.
    * Automating network diagnostics and monitoring with these tools.
    * Examples:
        * Script to check the availability of a list of websites.
        * Using `curl` to interact with REST APIs and retrieve data.
        * Script to monitor specific ports for listening services using `netstat`.

* **APIs with curl and jq**
    * Understanding RESTful API concepts and interacting with them using `curl`.
    * Constructing various types of HTTP requests (GET, POST, PUT, DELETE) with `curl`.
    * Handling different authentication methods for APIs (e.g., Basic Auth, API keys, OAuth).
    * Parsing and processing JSON data returned by APIs using `jq`.
    * Extracting specific information and transforming API responses within Bash scripts.
    * Examples:
        * Fetching weather data from a public API and displaying relevant information.
        * Automating tasks by interacting with service management APIs.

* **Error Handling and Debugging (set -x, trap)**
    * Implementing robust error handling mechanisms in Bash scripts.
    * Using `set -e` to exit immediately if a command exits with a non-zero status.
    * Employing `set -x` to trace the execution of commands for debugging.
    * Utilizing the `trap` command to define actions to be taken upon receiving signals (e.g., errors, interrupts, exits).
    * Logging errors and debugging information effectively.
    * Examples:
        * Script that cleans up temporary files even if an error occurs.
        * Using `set -x` to understand the flow of a complex script.

* **Creating Reusable Bash Libraries**
    * Organizing Bash code into reusable functions and scripts.
    * Sourcing external Bash scripts to include functions and variables.
    * Developing modular and maintainable Bash code.
    * Documenting Bash libraries for clarity and ease of use.
    * Examples:
        * Creating a library of common string manipulation functions.
        * Developing a library for interacting with a specific API.

* **Secure Credential Management**
    * Avoiding hardcoding sensitive information (passwords, API keys) directly in scripts.
    * Exploring secure methods for storing and accessing credentials.
    * Using environment variables for sensitive data.
    * Integrating with secret management tools (e.g., HashiCorp Vault, cloud provider secret managers) from Bash scripts.
    * Understanding the importance of least privilege and secure scripting practices.
    * Examples:
        * Script that retrieves API keys from environment variables.
        * Using `aws secretsmanager get-secret-value` to fetch secrets securely.

---
