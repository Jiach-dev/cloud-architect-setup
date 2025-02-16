#!/bin/bash
RESOURCE_GROUP="myResourceGroup"
STORAGE_ACCOUNT="mystorageacct"
CONTAINER_NAME="mycontainer"

# Upload a test file
echo "This is a test file" > test.txt
az storage blob upload --container-name $CONTAINER_NAME --file test.txt --name test.txt --account-name $STORAGE_ACCOUNT
echo "Test file uploaded to Azure Blob: $CONTAINER_NAME/test.txt"
