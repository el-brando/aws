variable "vpc_id" {
  description = "VPC to associate the internet gateway with"
}

variable "internet_gateway_name" {
  description = "Value for the Name tag of the internet gateway"
}

variable "subnet_id" {
  description = " ID of the subnet the gateway is associated with"
}

variable "nat_gateway_name" {
  description = "Name to assign to the Name tag of the NAT Gateway"
}

