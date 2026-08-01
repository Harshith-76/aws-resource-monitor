#!/bin/bash

while true
do
    clear

    echo "========================================"
    echo "     AWS RESOURCE MONITOR TOOLKIT"
    echo "========================================"
    echo ""
    echo "1. EC2 Monitor"
    echo "2. EBS Monitor"
    echo "3. IAM Monitor"
    echo "4. Security Group Audit"
    echo "5. AWS Account Summary"
    echo "6. Linux System Status"  
    echo "7. Generate Report"
    echo "8. Exit"
    echo ""

    read -p "Select an option: " choice

    case $choice in
        1)
            ./modules/ec2.sh
            ;;
        2)
            ./modules/ebs.sh
            ;;
        3)
            ./modules/iam.sh
            ;;
        4)
            ./modules/security.sh
            ;;
        5)
            ./modules/account.sh
            ;;
        6)
            ./modules/system.sh
            ;;
        7)
            ./modules/report.sh
            ;;

        8)
            echo "Goodbye!"
            exit 0
  
          
            ;;
        *)
            echo "Invalid option!"
            ;;
    esac

    echo ""
    read -p "Press Enter to continue..."
done
