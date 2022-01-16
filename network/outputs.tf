output "subnets" {
  value = aws_subnet.tf_public_subnet.*.cidr_block
}

output "private_subnets" {
  value = aws_subnet.tf_private_subnet.*.cidr_block
}

output "subnet_id" {
  value = aws_subnet.tf_public_subnet.*.id
}

output "p_subnet_id" {
  value = aws_subnet.tf_private_subnet.*.id
}

output "vpcname" {
  value = aws_vpc.tf_vpc.id
}

output "public_security_group" {
  value = aws_security_group.tf_public_sg.id
}
