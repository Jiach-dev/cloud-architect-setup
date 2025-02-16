# **Cloud Architect Setup**

This repository contains automation scripts and Infrastructure as Code (IaC) templates for setting up cloud services on **AWS** and **Azure**. It provides reusable configurations and setup scripts to deploy and manage file storage (S3 for AWS, Blob Storage for Azure). Additionally, it includes workflows for CI/CD automation to streamline the deployment process.

---

## **Directory Structure**

```bash
├── README.md               # Project overview and instructions
├── aws
│   ├── README.md           # AWS-specific setup instructions
│   ├── setup_s3.sh         # Shell script to create S3 bucket
│   ├── setup_s3.tf         # Terraform script to create AWS S3 bucket
│   ├── setup_s3.yaml       # YAML configuration for S3 setup
│   └── upload_test.sh      # Shell script to upload test files to S3
└── azure
    ├── README.md           # Azure-specific setup instructions
    ├── setup_blob.bicep    # Azure Bicep template to create Blob storage
    ├── setup_blob.sh       # Shell script to create Blob storage
    ├── setup_blob.tf       # Terraform script for Azure Blob storage setup
    └── upload_test.sh      # Shell script to upload test files to Azure Blob storage
```

**Getting Started**
**Prerequisites**
Before running the scripts, ensure you have the following tools installed:

- **AWS CLI**: For interacting with AWS services like S3.
- **Azure CLI**: For interacting with Azure services like Blob Storage.
- **Terraform**: For provisioning cloud resources in AWS and Azure.
- **Azure Bicep** (optional, for Azure resources): If using Bicep files for Azure setup.
- **Docker**: For containerization (if you plan to deploy Dockerized services).

**Setup for AWS**

To set up AWS services, follow these steps:

1. Terraform Setup for S3:

* Navigate to the aws directory and initialize Terraform:

```
cd aws
terraform init
terraform apply
```

2. Shell Script for S3 Setup:

* Alternatively, you can use the shell script setup_s3.sh to create the S3 bucket:

```
bash setup_s3.sh
```

3. Upload Test Files:
After setting up the S3 bucket, you can upload test files using the upload_test.sh script:

```
bash upload_test.sh
```

**Setup for Azure**

To set up Azure services, follow these steps:

1. Bicep Template for Blob Storage:

* If using Bicep, deploy the setup_blob.bicep file:

```
az deployment group create --resource-group <your-resource-group> --template-file setup_blob.bicep

```

2. Terraform Setup for Blob Storage:

* Alternatively, use Terraform for Azure Blob storage setup:

```
cd azure
terraform init
terraform apply
```

3. Shell Script for Blob Setup:

* You can also use the setup_blob.sh script to automate the Blob storage creation:
```
bash setup_blob.sh
```

4. Upload Test Files:

* Upload test files to Azure Blob Storage using the upload_test.sh script:
```
bash upload_test.sh
```


**CI/CD Workflow**
This repository includes workflows for continuous integration and deployment (CI/CD) using GitHub Actions.

**AWS Deployment Workflow:** Located in .github/workflows/deploy_aws.yml, this file automates the deployment of AWS services like S3 via Terraform.

**Azure Deployment Workflow:** Located in .github/workflows/deploy_azure.yml, this file automates the deployment of Azure Blob Storage using either Bicep or Terraform.

To deploy using the workflows, you'll need to configure the appropriate secrets in your GitHub repository for authentication with AWS and Azure.


**Secrets**
Ensure that the following secrets are configured in your GitHub repository:

**AWS:**
```
AWS_ACCESS_KEY_ID
AWS_SECRET_ACCESS_KEY
AWS_DEFAULT_REGION
```
**Azure:**
```
AZURE_CLIENT_ID
AZURE_CLIENT_SECRET
AZURE_TENANT_ID
AZURE_SUBSCRIPTION_ID
```