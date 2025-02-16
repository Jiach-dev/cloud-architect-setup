#!/bin/bash
# Create an S3 bucket and enable versioning
BUCKET_NAME="my-awesome-bucket-$(date +%s)"
aws s3 mb s3://$BUCKET_NAME --region us-east-1
aws s3api put-bucket-versioning --bucket $BUCKET_NAME --versioning-configuration Status=Enabled
echo "S3 Bucket '$BUCKET_NAME' created and versioning enabled."
