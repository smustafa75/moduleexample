variable "aws_region" {
  default = "eu-west-1"
}

variable "project_name" {
  default = "test-demo"
}

variable "vpc_cidr" {
default = ""
}

variable "public_cidrs" {

  type    = list(string)
  default = []
}

variable "accessip" {
  default = "0.0.0.0/0"
}

#variable "key_name" {}
#variable "public_key_path" {}

variable "instance_type" {
  default = "t2.micro"
}

variable "instance_count" {
  default = 1
}
