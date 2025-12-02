## Complete Terraform configuration for AWS infrastructure with ASG, AMI, Launch Template, and Load Balancer

## Project Structure

## terraform-aws-infra (Directory)
    main.tf
    variables.tf
    outputs.tf
    terraform.tfvars
    user-data.sh (optional)

## 1. Initialize Terraform

terraform init

## 2. Review Plan

    terraform plan

## 3. Apply Configuration

    terraform apply -auto-approve

## 4. Destroy Infrastructure (when needed)

    terraform destroy

## Key Features of This Configuration

    1. VPC with Public & Private Subnets - Multi-AZ deployment

    2. Application Load Balancer - Distributes traffic across instances

    3. Launch Template - Uses specified AMI with user data script

    4. Auto Scaling Group - Maintains desired instance count

    5. Security Groups - Proper network isolation

    6. IAM Roles - Secure permissions for instances

    7. Auto Scaling Policies - CPU-based scaling

8. NAT Gateway - Internet access for private instances

## Best Practices:

    1. AMI Management: Use Packer to create custom AMIs with application pre-installed

    2. Secrets Management: Use AWS Secrets Manager or Parameter Store for sensitive data

    3. Monitoring: Enable detailed CloudWatch metrics and logs

    4. Backup: Implement AMI backup strategies

    5. Security: Restrict SSH access, use bastion hosts for private instances

    6. State Management: Use remote backend (S3 + DynamoDB) for team collaboration

    7. Tagging: Consistent tagging for cost allocation and resource management

## This configuration provides a production-ready foundation that you can customize based on your specific requirements.

## Installing or updating to the latest version of the AWS CLI

    https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html

## Using AWS CLI aws configure (Recommended for Windows/Linux/Mac)

This is the easiest & safest method (does NOT expose keys in environment variables).

    aws configure

## You'll be asked

    AWS Access Key ID [None]: YOUR_ACCESS_KEY
    AWS Secret Access Key [None]: YOUR_SECRET_KEY

## AWS CLI will store credentials in:

    Windows → C:\Users\USERNAME\.aws\credentials

    Linux/macOS → ~/.aws/credentials

## To install Terraform on Windows, follow these steps:
    Download Terraform:
        1. Visit the official HashiCorp Terraform downloads page.
        2. Locate the Windows section and download the appropriate binary for your system (e.g., AMD64 for 64-bit systems).
    Extract the Executable:
        1. The downloaded file will be a .zip archive. Extract its contents to a directory of your choice. A common practice is to create a new folder like C:\terraform.
    Add Terraform to System PATH:
        1. Search for "environment variables" in the Windows search bar and select "Edit the system environment variables."
        2. In the System Properties window, click "Environment Variables..."
        3. Under "System variables," find and select the "Path" variable, then click "Edit..."
        4. Click "New" and add the full path to the directory where you extracted the terraform.exe file (e.g., C:\terraform).
        5. Click "OK" on all open windows to save the changes.
    Verify Installation:
        1. Open a new Command Prompt or PowerShell window (existing windows may not recognize the new PATH variable).
        2. Type terraform -v and press Enter.
        3. If the installation was successful, you will see the installed Terraform version as output.