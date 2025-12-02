Complete Terraform configuration for AWS infrastructure with ASG, AMI, Launch Template, and Load Balancer

Project Structure

terraform-aws-infra/
├── main.tf
├── variables.tf
├── outputs.tf
├── terraform.tfvars
└── user-data.sh (optional)

1. Initialize Terraform:

terraform init

2. Review Plan:

terraform plan

3. Apply Configuration:

terraform apply -auto-approve

4. Destroy Infrastructure (when needed):

terraform destroy

Key Features of This Configuration:

1. VPC with Public & Private Subnets - Multi-AZ deployment

2. Application Load Balancer - Distributes traffic across instances

3. Launch Template - Uses specified AMI with user data script

4. Auto Scaling Group - Maintains desired instance count

5. Security Groups - Proper network isolation

6. IAM Roles - Secure permissions for instances

7. Auto Scaling Policies - CPU-based scaling

8. NAT Gateway - Internet access for private instances

Best Practices:

1. AMI Management: Use Packer to create custom AMIs with application pre-installed

2. Secrets Management: Use AWS Secrets Manager or Parameter Store for sensitive data

3. Monitoring: Enable detailed CloudWatch metrics and logs

4. Backup: Implement AMI backup strategies

5. Security: Restrict SSH access, use bastion hosts for private instances

6. State Management: Use remote backend (S3 + DynamoDB) for team collaboration

7. Tagging: Consistent tagging for cost allocation and resource management

This configuration provides a production-ready foundation that you can customize based on your specific requirements.