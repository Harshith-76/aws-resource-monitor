#!/bin/bash

# ==========================================
# AWS Resource Monitor & Automation Toolkit
# Version: 1.0.0
# Author : Harshith Acharya
# ==========================================

clear

echo "======================================================="
echo "       AWS RESOURCE MONITOR & AUTOMATION TOOLKIT"
echo "======================================================="
echo "Version : 1.0.0"
echo "Author  : Harshith Acharya"
echo "======================================================="
echo ""

echo "[INFO] Checking AWS CLI installation..."

if command -v aws >/dev/null 2>&1
then
    echo "[SUCCESS] AWS CLI is installed."
else
    echo "[ERROR] AWS CLI is not installed."
    exit 1
fi

echo ""
echo "Press Enter to continue..."
read
