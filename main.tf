provider "aws" {
  region = var.aws_region
}

#terraform {
#  backend  "s3" {
#    bucket = "terraform-backend-sbr"
#    key = "linux-academy/terraform.tfstate"
#    region = "us-east-1"
#  }
#}

#deploy storage

module "storage" {
  source       = "./storage"
  project_name = var.project_name
}

module "networking" {
  source       = "./networking"
  vpc_cidr     = var.vpc_cidr
  public_cidrs = var.public_cidrs
  accessip     = var.accessip
}

module "compute" {
  source          = "./compute"
  public_key_path = var.public_key_path
  key_name        = var.key_name
  instance_type   = var.instance_type
  instance_count  = var.instance_count
  subnets         = module.networking.subnet_id
  security_group  = module.networking.public_security_group
}
