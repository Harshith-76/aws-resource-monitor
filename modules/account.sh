#!/bin/bash

echo "========================================"
echo "         AWS ACCOUNT SUMMARY"
echo "========================================"

aws sts get-caller-identity

echo ""
echo "Configured AWS CLI:"
aws configure list
