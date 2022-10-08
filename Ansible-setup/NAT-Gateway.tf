#NAT Gateway#
# Creating Nat Gateway
resource "aws_eip" "nat" {
  vpc = true
  tags={
    Name="Mohsin-Elastic-IP"
  }
}

resource "aws_nat_gateway" "nat-gw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.public.id
  tags={
    Name="Mohsin-NAt-Gateway"
  }
}