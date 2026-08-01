#!/bin/bash

mkdir -p ../reports

REPORT="../reports/aws_report_$(date +%Y%m%d_%H%M%S).txt"

{
echo "========================================="
echo "AWS RESOURCE MONITOR REPORT"
echo "Generated: $(date)"
echo "========================================="

echo ""
echo "===== ACCOUNT ====="
aws sts get-caller-identity

echo ""
echo "===== EC2 INSTANCES ====="
aws ec2 describe-instances --output table

echo ""
echo "===== EBS VOLUMES ====="
aws ec2 describe-volumes --output table

echo ""
echo "===== IAM USERS ====="
aws iam list-users --output table

echo ""
echo "===== SECURITY GROUPS ====="
aws ec2 describe-security-groups --output table

} > "$REPORT"

echo ""
echo "========================================="
echo "Report generated successfully!"
echo "Saved to:"
echo "$REPORT"
echo "========================================="
