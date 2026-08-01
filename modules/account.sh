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

header "AWS ACCOUNT SUMMARY"
log_action "Account Summary Executed"
aws sts get-caller-identity

echo ""
echo "Configured AWS CLI:"
aws configure list

success "Account summary completed successfully."
