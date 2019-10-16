# creates a route table for a public subnet

resource "aws_route_table" "public_subnet_route_table" {
  vpc_id = var.vpc_id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = var.inet_gateway_id
  }
}

resource "aws_route_table_association" "a" {
  subnet_id      = var.subnet_id
  route_table_id = aws_route_table.public_subnet_route_table.id
}