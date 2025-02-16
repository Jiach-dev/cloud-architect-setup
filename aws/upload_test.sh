#!/bin/bash
BUCKET_NAME="my-cloudformation-bucket"
echo "This is a test file" > test.txt
aws s3 cp test.txt s3://$BUCKET_NAME/
echo "Test file uploaded to S3: s3://$BUCKET_NAME/test.txt"
