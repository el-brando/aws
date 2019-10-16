variable "eip_id" {
  description = "Allocation ID for the elastic IP for the gateway"
}

variable "subnet_id" {
  description = " ID of the subnet the gateway is associated with"
}

variable "nat_gateway_name" {
  description = "Name to assign to the Name tag of the NAT Gateway"
}

variable "inet_gateway_id" {
  description = "The ID of the internet gateway for this VPC for dependancy purposes"
}


