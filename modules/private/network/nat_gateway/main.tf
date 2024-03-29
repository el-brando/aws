# net gateway base module

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = "${var.eip_id}"
  subnet_id     = "${var.subnet_id}"

  depends_on = ["${var.inet_gateway_id}"]
  
  tags = {
    Name = "${var.nat_gateway_name}"
  }
}