#!/bin/bash
RESOURCE_GROUP="myResourceGroup"
STORAGE_ACCOUNT="mystorageacct$RANDOM"
CONTAINER_NAME="mycontainer"

# Create resource group
az group create --name $RESOURCE_GROUP --location eastus

# Create storage account
az storage account create --name $STORAGE_ACCOUNT --resource-group $RESOURCE_GROUP --sku Standard_LRS

# Create blob container
az storage container create --name $CONTAINER_NAME --account-name $STORAGE_ACCOUNT

echo "Azure Storage Account '$STORAGE_ACCOUNT' and container '$CONTAINER_NAME' created."
