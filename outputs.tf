output "VPC_Name" {
  description = "VPC Name"
  value       = module.network.vpcname
}

output "Public_Subnets" {
  description = "Public Subnets"
  value       = module.network.subnets
}

output "Private_Subnets" {
  description = "Private Subnets"
  value       = module.network.private_subnets
}

output "Bucket_Name" {
  description = "S3 Bucket Name"
  value       = module.storage.bucketname
}

output "servers" {
  description = "EC2 Instance IDs"
  value       = module.compute.server_id
}

output "public_ip" {
  description = "EC2 Instance Public IPs"
  value       = module.compute.server_ip
}

output "role_name" {
  description = "IAM Role Name"
  value       = module.iam.iam_role
}