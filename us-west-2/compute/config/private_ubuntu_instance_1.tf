module "vpc" {
  source = "../../../modules/network/vpc_lookup"

  vpc_name = "default-vpc"
}

module "subnet" {
  source = "../../../modules/network/subnet_lookup_by_tier"

  availability_zone = "us-west-2a"
  tier              = "private"
  vpc_id            = module.vpc.vpc_id
}

module "base_sg" {
  source = "../../../modules/network/default_vpc_sg_lookup"

  vpc_id           = module.vpc.vpc_id
  base_vpc_sg_name = "default-vpc-base-sg"
}

module "ubuntu_instance" {
  source = "../../../modules/compute/private_ubuntu_instance"

  instance_name = "test_instance"
  instance_type = "t3.medium"
  subnet_id     = module.subnet.subnet_id
  key_name      = "master-keypair"
  vpc_sg_ids    = module.base_sg.id
}