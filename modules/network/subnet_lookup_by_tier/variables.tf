variable "tier" {
  description = "The subnet tier to lookup, i.e. public, private, web, app, etc..."
}

variable "availability_zone" {
  description = "The AZ of the subnet"
}

variable "vpc_id" {
  description = "The ID of the VPC the subnet is part of"
}