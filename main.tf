provider "aws" {
  region = var.aws_region
}

module "network" {
  source        = "./network"
  vpc_cidr      = var.vpc_cidr
  public_cidrs  = var.public_cidrs
  private_cidrs = var.private_cidrs
  accessip      = var.accessip
}

module "storage" {
  source       = "./storage"
  project_name = var.project_name
}

module "compute" {
  source = "./compute"
  #public_key_path = var.public_key_path
  #key_name        = "${var.key_name}"
  instance_type    = var.instance_type
  instance_count   = var.instance_count
  subnets          = module.network.subnet_id
  security_group   = module.network.public_security_group
  instance_profile = module.iam.iam_instance_profile_arn
  depends_on = [
    module.iam.iam_instance_profile_arn
  ]
}

module "iam" {
  source      = "./iam"
  policy_name = var.policy_name
  s3_policy   = var.s3_policy
  role_name   = var.role_name
}