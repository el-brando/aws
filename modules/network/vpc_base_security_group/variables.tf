variable "vpc_name" {
  description = "Name pf the VPC"
}

variable "vpc_id" {
  description = "ID of the VPC for the SG"
}

variable "ingress_cidr_blocks" {
  description = "CIDR blocks for the SG ingress rule"
}