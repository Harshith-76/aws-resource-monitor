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

header "EBS VOLUME REPORT"
log_action "EBS Monitor Executed"
aws ec2 describe-volumes \
--query "Volumes[*].[VolumeId,Size,State,AvailabilityZone,VolumeType]" \
--output table

success "EBS report completed successfully."
