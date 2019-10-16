# Base module for elastic IP

resource "aws_eip" "eip" {
  depends_on                = ["${var.inet_gateway_id}"]
}