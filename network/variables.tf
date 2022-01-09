variable "vpc_cidr" {

}
variable "public_cidrs" {

  type    = list(string)
  default = []
}
variable "private_cidrs" {

  type    = list(string)
  default = []
}

variable "accessip" {
  default = "0.0.0.0/0"
}
