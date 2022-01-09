output "VPC_Name" {
  description = "VPC Name"
  value = module.network.vpcname
}

output "Public_Subnets" {
  description = "Public Subnets"
  value       = module.network.subnets
}

output "Private_Subnets" {
  description = "Private Subnets"
  value       = module.network.subnets
}

output "Bucket_Name" {
  value = module.storage.bucketname
}
#output "Formatted_public_subnets" {
#  value = join(", ", module.networking.subnets)
#}

#output "Subnet_IDs" {
#  value = module.networking.subnet_id
#}

