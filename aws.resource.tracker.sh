#!/bin/bash
##########################################################################################################################
#purpose: Report for AWS resources available in the AWS account                   
#Author : Anil Kumar Kathoju                                          
#Date : 09-Dec-2025                                             
#Version: V.1.0                                      
#########################################################################################################################

echo "=============================="
echo "Listing S3 Buckets"
echo "=============================="
aws s3 ls

echo "=============================="
echo "Listing EC2 Instance Names"
echo "=============================="
aws ec2 describe-instances \
  --query "Reservations[*].Instances[*].Tags[?Key=='Name'].Value | []" \
  --output text

echo "=============================="
echo "Listing Lambda Functions"
echo "=============================="
aws lambda list-functions

echo "=============================="
echo "Listing IAM Users"
echo "=============================="
aws iam list-users
