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

header "IAM USER REPORT"

aws iam list-users \
--query "Users[*].[UserName,CreateDate,Arn]" \
--output table

success "IAM report completed successfully."
