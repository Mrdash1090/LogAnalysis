# project URL
https://roadmap.sh/projects/nginx-log-analyser

# Nginx Log Analyzer

This shell script processes an Nginx access log file and provides insights into:

- Top 5 IP addresses with the most requests
- Top 5 most requested paths
- Top 5 response status codes
- Top 5 user agents

# Prerequisites

- An Nginx access log file (e.g., `access.log`) in the standard format.
- A Unix-like environment with the following commands available:
  - `awk`
  - `sort`
  - `uniq`
  - `head`

# Usage

1. Place the access log file in the same directory as the script and name it `access.log`.  
   Alternatively, update the `LOG_FILE` variable in the script to point to your log file.
   Log file can be found at:

https://gist.githubusercontent.com/kamranahmedse/e66c3b9ea89a1a030d3b739eeeef22d0/raw/77fb3ac837a73c4f0206e78a236d885590b7ae35/nginx-access.log

3. Make the script executable:
  
   chmod +x log_analysis.sh
Run the script:


./log_analysis.sh

