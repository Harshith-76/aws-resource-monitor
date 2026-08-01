#!/bin/bash

echo "===================================="
echo "         EBS VOLUME REPORT"
echo "===================================="

aws ec2 describe-volumes \
    --query "Volumes[*].[VolumeId,Size,State,AvailabilityZone,VolumeType]" \
    --output table
