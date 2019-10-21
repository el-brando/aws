# module to look up a vpc ID based on the VPC name

data "aws_vpc" "target_vpc" {
  tags {
    Name = var.vpc_name
  }
}