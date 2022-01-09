provider "aws" {
  region = var.aws_region
}

module "network" {
  source       = "./network"
  vpc_cidr     = var.vpc_cidr
  public_cidrs = var.public_cidrs
  private_cidrs = var.private_cidrs
  accessip     = var.accessip
}

module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

