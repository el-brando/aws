data "aws_availability_zones" "available" {
  state = "available"
}

module "vpc_with_internet" {
  source = "../../../modules/network/vpc_with_internet"

  availability_zone     = data.aws_availability_zones.available.names[0]
  internet_gateway_name = "test_inet_gateway"
  nat_gateway_name      = "test_nat_gateway"
  vpc_name              = "test_vpc"
  vpc_cidr_block        = "10.0.0.0/16"
  subnet_size_bits      = "4"
}