# base aws_vpc module

resource "aws_vpc" "vpc" {
  cidr_block       = "${cidr_block}"
  enable_dns_hostnames = "true"

  tags = {
    Name = "${aws_vpc.vpc}"
  }
}