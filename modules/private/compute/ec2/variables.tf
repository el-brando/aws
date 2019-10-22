variable "ami_id" {
  description = "AMI ID to build the instance from"
}

variable "instance_type" {
  description = "The instance type to create"
}

variable "subnet_id" {
  description = "The ID of the subnet to place the instance in"
}

variable "key_name" {
  description = "The ssh key for the instance"
}

variable "instance_name" {
  description = "Value for the Name tag"
}

variable "vpc_sg_ids" {
  description = "SG ID's to associate with the instance"
}
