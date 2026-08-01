#!/bin/bash

echo "===================================="
echo "          IAM USER REPORT"
echo "===================================="

aws iam list-users \
    --query "Users[*].[UserName,CreateDate,Arn]" \
    --output table
