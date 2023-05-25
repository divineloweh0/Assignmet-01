resource "aws_eip" "epi1" {
  vpc                    = true
  tags = {
    Name = "example-eip1"
  }
}
