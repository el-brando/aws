# module to find SG ID based on VPC ID and tag

data "aws_security_group" "base_sg" {
  vpc_id = var.vpc_id

  filter {
    name   = "tag:Name"
    values = [var.base_vpc_sg_name]
  }
}