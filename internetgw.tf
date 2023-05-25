resource "aws_internet_gateway" "gw1" {
  vpc_id = aws_vpc.loweh1.id

  tags = {
    Name = "Igw1"
  }
}