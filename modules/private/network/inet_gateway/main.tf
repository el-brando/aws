# internet gateway base module

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = "${var.vpc_id}"

  tags = {
    Name = "${var.internet_gateway_name}"
  }
}