# module to create a base SG allowing ssh

module "vpc_base_sg" {
  source = "../../private/compute/security_group"

  sg_name     = "${var.vpc_name}-base-sg"
  vpc_id      = var.vpc_id
  description = "Base SG for ${var.vpc_name}"
}


module "vpc_base_sg_ingress_rule" {
  source = "../../private/compute/security_group_rule"

  type        = "ingress"
  from_port   = 22
  to_port     = 22
  protocol    = "tcp"
  cidr_blocks = [var.ingress_cidr_blocks]
  sg_id       = module.vpc_base_sg.id
}

module "vpc_base_sg_egress_rule" {
  source = "../../private/compute/security_group_rule"

  type        = "egress"
  from_port   = "0"
  to_port     = "0"
  protocol    = "-1"
  cidr_blocks = ["0.0.0.0/0"]
  sg_id       = module.vpc_base_sg.id
}