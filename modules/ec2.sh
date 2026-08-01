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

header "EC2 INSTANCE REPORT"

aws ec2 describe-instances \
--query "Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name,PublicIpAddress,LaunchTime]" \
--output table

success "EC2 report completed successfully."
