# Module creates IGW, NAT Gateway and EIP

resource "aws_internet_gateway" "internet_gateway" {
  vpc_id = var.vpc_id

  tags = {
    Name = var.internet_gateway_name
  }
}

resource "aws_nat_gateway" "nat_gateway" {
  allocation_id = aws_eip.eip.id
  subnet_id     = var.subnet_id

  depends_on = [aws_internet_gateway.internet_gateway]

  tags = {
    Name = var.nat_gateway_name
  }
}

resource "aws_eip" "eip" {
  depends_on = [aws_internet_gateway.internet_gateway]
}