resource "aws_subnet" "dev11" {
  vpc_id     = aws_vpc.loweh1.id
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch = true

  tags = {
    Name = "private"
  }
}
