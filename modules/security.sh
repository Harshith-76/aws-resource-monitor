#!/bin/bash

echo "========================================="
echo "      SECURITY GROUP AUDIT REPORT"
echo "========================================="

echo ""
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
