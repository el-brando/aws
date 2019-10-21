# module to look up a subnet ID based on AZ and tier

data "aws_subnet" "target_subnet" {

  vpc_id            = var.vpc_id
  availability_zone = var.availability_zone

  tags {
    Tier = var.tier
  }
}