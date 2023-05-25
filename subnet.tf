resource "aws_subnet" "dev1" {
  vpc_id     = aws_vpc.loweh1.id
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "public"
  }
}
resource "aws_nat_gateway" "Nat1" {
  allocation_id = aws_eip.epi1.id
  subnet_id     = aws_subnet.dev11.id

  tags = {
    Name = "gw NAT1"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  depends_on = [aws_internet_gateway.gw1]
}