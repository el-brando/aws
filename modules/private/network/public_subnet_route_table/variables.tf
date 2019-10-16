variable "vpc_id" {
  description = "The ID of the VPC the route table is associated with"
}

variable "inet_gateway_id" {
  description = "The ID of the internet gateway to route internet traffic to"
}

variable "subnet_id" {
  description = "ID of the subnet to associate the route table with"
}