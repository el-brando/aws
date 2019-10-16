# base aws_vpc module

resource "aws_vpc" "vpc" {
  cidr_block           = var.cidr_block
  enable_dns_hostnames = "true"

  tags = {
    Name = var.vpc_name
  }
}