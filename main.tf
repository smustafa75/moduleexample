provider "aws" {
  region = var.aws_region
}

module "network" {
  source       = "./network"
#  vpc_cidr     = var.vpc_cidr
#  public_cidrs = var.public_cidrs
#  accessip     = var.accessip
}

