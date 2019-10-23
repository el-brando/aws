# base module for ec2

resource "aws_instance" "instance" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  subnet_id                   = var.subnet_id
  key_name                    = var.key_name
  vpc_security_group_ids      = [var.vpc_sg_ids]
  associate_public_ip_address = var.associate_public_ip_address

  tags = {
    Name = var.instance_name
  }
}
