variable "nat_gateway_name" {
  description = "Value for the Name tag for the NAT gateway"
}

variable "subnet_size_bits" {
  description = "Used to determine the subnet size from the VPC CIDR block"
}

variable "availability_zone" {
  description = "The AZ for the subnets"
}

variable "vpc_cidr_block" {
  description = "CIDR block for the VPC"
}

variable "vpc_name" {
  description = "Value for the Name tag of the VPC"
}

variable "internet_gateway_name" {
  description = "Value for the Name tag for the internet gateway"
}

variable "ingress_cidr_block" {
  description = "CIDR block for base VPC SG ingress rule"
}
