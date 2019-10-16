variable "vpc_id" {
  description = "ID of the VPC this subnet will be part of"
}

variable "cidr_block" {
  description = "CIDR block for this subnet"
}

variable "subnet_name" {
  description = "Name for the subnet Name tag"
}

variable "subnet_tier" {
  description = "Tier for the subnet, for example: web, app, db, public, private"
}

variable "map_public_ip_on_launch" {
  description = "determines if public IP's are attached to instances launched into this subnet, default is no"
  default     = "false"
}

variable "availability_zone" {
  description = "AZ for this subnet"
}



