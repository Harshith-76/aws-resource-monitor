#!/bin/bash

echo "===================================="
echo "        EC2 INSTANCE REPORT"
echo "===================================="

aws ec2 describe-instances \
    --query "Reservations[*].Instances[*].[InstanceId,InstanceType,State.Name,PublicIpAddress,LaunchTime]" \
    --output table
