# AWS Resource Monitor

A modular Bash-based AWS resource monitoring and reporting toolkit built using AWS CLI, IAM, and Linux.

## Features

- EC2 Instance Monitoring
- EBS Volume Monitoring
- IAM User Monitoring
- Security Group Audit
- AWS Account Summary
- Linux System Monitoring
- Automatic Logging
- Report Generation
- Modular Bash Architecture

## Technologies

- Bash
- AWS CLI
- IAM
- EC2
- EBS
- Linux
- Git
- GitHub

## Project Structure

```
aws-resource-monitor/
│
├── tracker.sh
├── modules/
│   ├── ec2.sh
│   ├── ebs.sh
│   ├── iam.sh
│   ├── security.sh
│   ├── account.sh
│   ├── system.sh
│   └── utils.sh
│
├── reports/
├── logs/
├── screenshots/
└── README.md
```

## Installation

```bash
git clone git@github.com:Harshith-76/aws-resource-monitor.git
cd aws-resource-monitor
chmod +x tracker.sh
./tracker.sh
```

## Sample Menu

```
1. EC2 Monitor
2. EBS Monitor
3. IAM Monitor
4. Security Group Audit
5. AWS Account Summary
6. Linux System Status
7. Generate Report
8. Exit
```

## Sample Report

Reports are automatically generated inside the `reports/` directory.

## Logging

Execution logs are stored inside the `logs/` directory.

## Author

Harshith
