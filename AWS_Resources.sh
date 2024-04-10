#! /bin/bash

# Version: v1
# Author: Brijesh Singh
# Date: 04/10/2024

## This script will report the AWS resources usage
set -x
#AWS S3
#AWS EC2
#AWS Lambda
#AWS IAM Users

#list s3 bucket
echo "Print list of s3 bucket"
aws s3 ls > resources_tracker.txt

# list EC2 Instances
echo "Print list of ec2"
aws ec2 describe-Instances | jq '.Reservations[].Instances[].InstanceID[]' >> resources_tracker.txt

# List AWS Lambda 
echo "Print list of lambda"
aws lambda list-functions >> resources_tracker.txt

# List IAM Users
echo "Print list of iam users"
aws iam list-users >> resources_tracker.txt