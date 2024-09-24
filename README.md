# Terraform IaC Project

This repository contains code examples and resources for learning and implementing Infrastructure as Code (IaC) using [Terraform](https://www.terraform.io/). The project demonstrates how to create and manage AWS resources such as S3 buckets and CloudFront distributions.

## Prerequisites

Before you can use the code examples in this repository, make sure you have the following prerequisites installed:

- **Terraform** (version 1.9.5 or higher)
- **AWS CLI** properly configured with your credentials (SSO or Access Keys)

## Getting Started

To get started with this Terraform project, follow these steps:

1. Clone the repository and navigate to the project directory:

    ```bash
    git clone https://github.com/your-username/terraform-iac-project.git
    cd terraform-iac-project
    ```

2. Initialize Terraform:

    ```bash
    terraform init
    ```

3. Modify the `main.tf` file if needed to define the desired infrastructure resources.

4. Apply the Terraform configuration to provision your infrastructure:

    ```bash
    terraform apply
    ```

## Commands

Here are some common Terraform commands that you can use to manage your infrastructure:

### Terraform

- `terraform init`: Initializes a Terraform working directory.
- `terraform plan`: Generates an execution plan for Terraform.
- `terraform apply`: Applies the changes required to reach the desired state of the configuration.
- `terraform destroy`: Destroys the Terraform-managed infrastructure.
- `terraform validate`: Validates the Terraform files.
- `terraform fmt`: Rewrites Terraform configuration files to a canonical format.
- `terraform show`: Provides human-readable output from a state or plan file.
- `terraform state`: Advanced state management commands.

### AWS

- `aws configure sso`: Configures the AWS CLI to use AWS Single Sign-On (SSO).
- `aws sso login`: Logs in to AWS SSO and returns credentials for the AWS CLI.
- `aws sts get-caller-identity`: Returns details about the IAM user or role whose credentials are used to call the operation.

## Examples

This repository provides examples for creating AWS resources, including:

- **S3 Buckets**
- **CloudFront Distributions**

Each example is located in the respective directories and contains a `main.tf` file with the Terraform code.

## Troubleshooting

### AWS credentials not found

Error: `No valid credential sources found for AWS Provider.`

Solution: Ensure your AWS CLI credentials are properly configured and your environment variables are set.

### User account not enabled to create resources

Error: `Error creating S3 bucket: AccessDenied: Access Denied`

Solution: Ensure that the user has the necessary permissions to create resources on the AWS account.

### Terraform unable to destroy resources with `prevent_destroy`

Error: `Error deleting S3 Bucket: BucketNotEmpty: The bucket you tried to delete is not empty`

Solution: Use the `--target` flag to specifically target and destroy the resource:

```bash
terraform destroy --target module.s3.data.aws_s3_bucket.bucket
