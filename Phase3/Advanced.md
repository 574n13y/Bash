# 🧠 Phase 3: Advanced Level - Bash Scripting

## 📂 Topics & Examples

### ☁️ Cloud CLI Integration

**AWS CLI Example:**
```bash
#!/bin/bash

# List all EC2 instances
aws ec2 describe-instances \
    --query 'Reservations[].Instances[].[InstanceId,State.Name,Tags[?Key==`Name`].Value[]|[0]]' \
    --output table

# List S3 buckets
aws s3 ls
```

**Azure CLI Example:**
```bash
#!/bin/bash

# List resource groups
az group list --output table

# List VMs
az vm list --output table
```

**Google Cloud Example:**
```bash
#!/bin/bash

# List compute instances
gcloud compute instances list

# List Cloud Storage buckets
gsutil ls
```

### 🏗️ Automating Infrastructure

**Terraform with Bash Example:**
```bash
#!/bin/bash

# Set environment variables
export TF_VAR_environment="production"
export TF_VAR_region="us-west-2"

# Initialize and validate
terraform init
terraform validate

# Plan and apply with auto-approve
terraform plan -out=tfplan
terraform apply tfplan
```

### 🌐 Networking Tools

**Network Connectivity Check:**
```bash
#!/bin/bash

# Function to check host connectivity
check_host() {
    local host=$1
    if ping -c 1 $host &> /dev/null; then
        echo "$host is reachable"
    else
        echo "$host is unreachable"
    fi
}

# Check open ports
check_ports() {
    local host=$1
    netstat -tuln | grep LISTEN
}

# Make HTTP request
check_website() {
    local url=$1
    curl -sI $url | head -n 1
}
```

### 🔄 APIs with curl and jq

**REST API Integration:**
```bash
#!/bin/bash

# Make API request and parse JSON response
get_data() {
    local endpoint=$1
    local response=$(curl -s "$endpoint")
    
    # Parse with jq
    echo $response | jq '.'
}

# Example usage
get_weather() {
    local api_key="YOUR_API_KEY"
    local city="London"
    
    curl -s "https://api.weatherapi.com/v1/current.json?key=$api_key&q=$city" \
        | jq '.current.temp_c'
}
```

### 🐛 Error Handling and Debugging

**Advanced Error Handling:**
```bash
#!/bin/bash

# Enable debug mode
set -x

# Error handling
set -e
set -o pipefail

# Error trap
trap 'echo "Error on line $LINENO. Exit code: $?"' ERR

# Function with error handling
process_file() {
    local file=$1
    if [[ ! -f $file ]]; then
        echo "Error: File $file not found" >&2
        return 1
    fi
}
```

### 📚 Creating Reusable Bash Libraries

**Library Example (lib.sh):**
```bash
#!/bin/bash

# Utility functions
log_info() {
    echo "[INFO] $1"
}

log_error() {
    echo "[ERROR] $1" >&2
}

is_root() {
    [[ $EUID -eq 0 ]]
}

# Usage in other scripts:
# source lib.sh
```

### 🔐 Secure Credential Management

**Credentials Handling:**
```bash
#!/bin/bash

# Using environment variables
export DB_PASSWORD="secretpass"

# Using encrypted files
encrypt_credentials() {
    local file=$1
    gpg -c $file
}

# Using AWS Secrets Manager
get_secret() {
    local secret_name=$1
    aws secretsmanager get-secret-value \
        --secret-id $secret_name \
        --query 'SecretString' \
        --output text
}

# Using Hashicorp Vault
get_vault_secret() {
    local path=$1
    vault kv get -field=password $path
}
```

### 🔍 Best Practices

1. Always use environment variables for sensitive data
2. Implement proper error handling and logging
3. Use functions for reusable code
4. Add input validation
5. Include proper documentation
6. Follow security best practices
7. Use version control for scripts
8. Implement proper testing

### 📝 Documentation Template

```bash
#!/bin/bash
#
# Script Name: example.sh
# Description: Brief description of what the script does
# Author: Your Name
# Date Created: YYYY-MM-DD
# Last Modified: YYYY-MM-DD
#
# Usage: ./example.sh [options]
#
# Dependencies:
#   - aws-cli
#   - jq
#   - curl
```

---

