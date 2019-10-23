# creates a single ubuntu instance

module "private_ubuntu_instance" {
  source = "../../private/compute/ec2"

  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  instance_name               = var.instance_name
  instance_type               = var.instance_type
  ami_id                      = data.aws_ami.latest-ubuntu.id
  vpc_sg_ids                  = var.vpc_sg_ids
  associate_public_ip_address = "false"
}

data "aws_ami" "latest-ubuntu" {
  most_recent = true
  owners      = ["099720109477"] # Canonical

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-bionic-18.04-amd64-server-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}