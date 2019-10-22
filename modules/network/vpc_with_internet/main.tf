# Base modiule for creating a VPC with public and private subnets, IGW, NATGW and EIP

module "vpc" {
  source = "../../private/network/vpc"

  cidr_block = var.vpc_cidr_block
  vpc_name   = var.vpc_name
}

module "private_subnet" {
  source = "../../private/network/subnet"

  vpc_id            = module.vpc.id
  cidr_block        = cidrsubnet(var.vpc_cidr_block, var.subnet_size_bits, 0)
  subnet_name       = "Private Subnet"
  subnet_tier       = "private"
  availability_zone = var.availability_zone
}

module "public_subnet" {
  source = "../../private/network/subnet"

  vpc_id                  = module.vpc.id
  cidr_block              = cidrsubnet(var.vpc_cidr_block, var.subnet_size_bits, 1)
  subnet_name             = "Public Subnet"
  subnet_tier             = "public"
  availability_zone       = var.availability_zone
  map_public_ip_on_launch = "true"
}

module "gateways" {
  source = "../../private/network/gateways"

  internet_gateway_name = var.internet_gateway_name
  nat_gateway_name      = var.nat_gateway_name
  subnet_id             = module.public_subnet.id
  vpc_id                = module.vpc.id
}

module "nat_gateway_route" {
  source = "../../private/network/nat_gateway_route"

  nat_gateway_id = module.gateways.nat_gateway_id
  route_table_id = module.vpc.default_route_table_id
}

module "public_subnet_route_table" {
  source = "../../private/network/public_subnet_route_table"

  inet_gateway_id = module.gateways.inet_gateway_id
  vpc_id          = module.vpc.id
  subnet_id       = module.public_subnet.id
}

module "vpc_base_security_group" {
  source = "../vpc_base_security_group"

  ingress_cidr_blocks = var.ingress_cidr_block
  vpc_id              = module.vpc.id
  vpc_name            = var.vpc_name
}