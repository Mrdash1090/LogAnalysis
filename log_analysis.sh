#!/bin/bash

# File name of the access log
LOG_FILE="access.log"

# Ensure the log file exists
if [[ ! -f "$LOG_FILE" ]]; then
  echo "Error: Log file '$LOG_FILE' not found!"
  exit 1
fi

# Top 5 IP addresses with the most requests
echo "Top 5 IP addresses with the most requests:"
awk '{print $1}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -n 5 | awk '{print $2 " - " $1 " requests"}'
echo

# Top 5 most requested paths
echo "Top 5 most requested paths:"
awk '{print $7}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -n 5 | awk '{print $2 " - " $1 " requests"}'
echo

# Top 5 response status codes
echo "Top 5 response status codes:"
awk '{print $9}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -n 5 | awk '{print $2 " - " $1 " requests"}'
echo

# Top 5 user agents
echo "Top 5 user agents:"
awk -F\" '{print $6}' "$LOG_FILE" | sort | uniq -c | sort -rn | head -n 5 | awk '{print $2 " - " $1 " requests"}'
