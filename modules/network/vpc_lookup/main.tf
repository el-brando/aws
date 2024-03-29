# module to look up a vpc ID based on the VPC name

data "aws_vpc" "target_vpc" {
  filter {
    name = "tag:Name"
    values = [var.vpc_name]
  }
}