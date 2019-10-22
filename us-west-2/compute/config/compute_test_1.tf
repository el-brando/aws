module "vpc" {
  source = "../../../modules/network/vpc_lookup"

  vpc_name = "default_vpc"
}

module "subnet" {
  source = "../../../modules/network/subnet_lookup_by_tier"

  availability_zone = "us-west-2a"
  tier              = "private"
  vpc_id            = module.vpc.vpc_id
}

module "ubuntu_instance" {
  source = "../../../modules/compute/ubuntu_instance"

  instance_name = "test_instance"
  instance_type = "t3.medium"
  subnet_id     = module.subnet.subnet_id
  key_name      = "master-keypair"
}