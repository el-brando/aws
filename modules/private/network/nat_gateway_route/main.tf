# updates a VPC route table with a route to a NAT gateway for internet connectivity

resource "aws_route" "nat_gateway_route" {
  route_table_id         = var.route_table_id
  destination_cidr_block = "0.0.0.0/0"
  nat_gateway_id         = var.nat_gateway_id
}