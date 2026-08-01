#!/bin/bash

source "$(dirname "$0")/utils.sh"

if ! command -v aws >/dev/null 2>&1; then
    error "AWS CLI is not installed."
    exit 1
fi

if ! aws sts get-caller-identity >/dev/null 2>&1; then
    error "AWS CLI is not configured."
    exit 1
fi

header "SECURITY GROUP AUDIT"
log_action "Security Group Audit Executed"
echo "Security Groups:"
echo ""

aws ec2 describe-security-groups \
--query "SecurityGroups[*].[GroupName,GroupId]" \
--output table

echo ""
echo "Inbound Rules:"
echo ""

aws ec2 describe-security-groups \
--query "SecurityGroups[*].IpPermissions[*].[FromPort,ToPort,IpProtocol]" \
--output table

success "Security audit completed successfully."
