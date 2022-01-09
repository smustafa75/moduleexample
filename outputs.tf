output "Bucket Name" {
  value = module.storage.bucketname
}

output "VPC Name" {
  value = module.networking.vpcname
}

output "Public Subnets" {
  value = module.networking.subnets
}

output "Formatted public subnets" {
  value = join(", ", module.networking.subnets)
}

output "Subnet IDs" {
  value = module.networking.subnet_id
}

output "security_group" {
  value = module.networking.public_security_group
}

output "servers" {
  value = module.compute.server_id
}

output "public_ip" {
  value = module.compute.server_ip
}
