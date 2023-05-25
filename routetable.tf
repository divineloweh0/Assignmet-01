resource "aws_route_table" "rt1" {
  vpc_id = aws_vpc.loweh1.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw1.id
  }

  tags = {
    Name = "Route1"
  }
}
