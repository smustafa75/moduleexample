variable "aws_region" {
  description = "AWS region to deploy resources"
  default     = "eu-west-1"
}

variable "project_name" {
  description = "Name of the project for resource naming"
  default     = "test-demo"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "public_cidrs" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = []
}

variable "private_cidrs" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = []
}

variable "accessip" {
  description = "CIDR block for IP addresses allowed to access resources"
  default     = "0.0.0.0/0"
}

#variable "key_name" {}
#variable "public_key_path" {}

variable "instance_type" {
  description = "EC2 instance type"
  default     = "t2.micro"
}

variable "instance_count" {
  description = "Number of EC2 instances to create"
  default     = 1
}

variable "policy_name" {
  description = "Name for the CloudWatch access policy"
  default     = ""
}

variable "role_name" {
  description = "Name for the IAM role"
  default     = ""
}

variable "s3_policy" {
  description = "Name for the S3 access policy"
  default     = ""
}

variable "instance_profile" {
  description = "Name for the instance profile"
  default     = ""
}