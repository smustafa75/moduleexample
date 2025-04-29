# Terraform AWS Infrastructure Modules

This repository contains Terraform modules to provision a complete AWS infrastructure stack. The modular approach allows for easy customization and reuse of infrastructure components.

## Infrastructure Components

When provisioned, this Terraform configuration will create:

- **Network Module**
  - 1 VPC with custom CIDR block
  - 1 Internet Gateway
  - 2 Public Subnets (in different availability zones)
  - 2 Private Subnets (in different availability zones)
  - Associated route tables and security groups

- **IAM Module**
  - 1 IAM Role with appropriate trust relationships
  - IAM Policies for CloudWatch and S3 access
  - 1 Instance Profile for EC2 instances

- **Compute Module**
  - 2 EC2 instances in public subnets
  - Automatic installation of HTTP server
  - Custom user data configuration

- **Storage Module**
  - S3 bucket for application data with private ACL

## Architecture

The infrastructure follows AWS best practices with a modular design:

- Network module creates a secure VPC with public and private subnets
- IAM module establishes least-privilege permissions for resources
- Compute module deploys EC2 instances with proper security groups
- Storage module provisions S3 storage with appropriate access controls

## Deployment

The EC2 instances will automatically install and start the HTTP service upon creation. CloudWatch metrics for the EC2 instances will be available within approximately 10 minutes after deployment.

### Prerequisites

- AWS CLI configured with appropriate credentials
- Terraform v1.1.2 or later

### Terraform Version Compatibility

```
Terraform v1.1.2
+ provider registry.terraform.io/hashicorp/aws v3.71.0
+ provider registry.terraform.io/hashicorp/random v3.1.0
+ provider registry.terraform.io/hashicorp/template v2.2.0
```

### Deployment Steps

1. Clone this repository
2. Create a `terraform.tfvars` file based on the provided `tfvars.txt` example
3. Initialize Terraform: `terraform init`
4. Review the execution plan: `terraform plan`
5. Apply the configuration: `terraform apply`

## Configuration Variables

A sample `terraform.tfvars` file is provided as `tfvars.txt`. Copy this file to `terraform.tfvars` and modify the values as needed for your environment:

```
aws_region    = "us-east-1"
project_name  = "Terraform-Module-Example"
vpc_cidr      = "10.11.0.0/16"
public_cidrs  = ["10.11.1.0/24", "10.11.2.0/24"]
private_cidrs = ["10.11.3.0/24", "10.11.4.0/24"]
instance_type = "t2.micro"
instance_count = "2"
```

## Outputs

After successful deployment, Terraform will output:
- VPC name
- Public and private subnet IDs
- S3 bucket name
- EC2 instance IDs and public IPs
- IAM role name

## Security Considerations

- Security groups are configured to allow only necessary traffic
- IAM roles follow the principle of least privilege
- Private subnets are used for resources that don't need direct internet access

## Maintenance

To update or modify the infrastructure:

1. Make changes to the Terraform files
2. Run `terraform plan` to review changes
3. Apply changes with `terraform apply`

To destroy the infrastructure:

```
terraform destroy
```
