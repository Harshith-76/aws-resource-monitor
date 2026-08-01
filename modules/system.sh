#!/bin/bash

source "$(dirname "$0")/utils.sh"

header "LINUX SYSTEM STATUS"

echo "Hostname:"
hostname

echo ""
echo "Current User:"
whoami

echo ""
echo "Uptime:"
uptime

echo ""
echo "Disk Usage:"
df -h /

echo ""
echo "Memory Usage:"
free -h

echo ""
echo "CPU Load:"
uptime | awk -F'load average:' '{print $2}'

success "System report completed successfully."
