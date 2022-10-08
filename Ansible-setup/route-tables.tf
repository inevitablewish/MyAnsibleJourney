# ROUTING #
resource "aws_route_table" "internet-rtb" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }
  tags= {
    Name="Public Route Table"
  }
}

resource "aws_route_table_association" "internet-rta" {
  subnet_id      = aws_subnet.public.id
  route_table_id = aws_route_table.internet-rtb.id
  
  
}
#########################################################

resource "aws_route_table" "private-rtb" {
  vpc_id = aws_vpc.vpc.id

  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.nat-gw.id
  }
  tags= {
    Name="Private Route Table"
  }
}

resource "aws_route_table_association" "private-rta" {
  subnet_id      = aws_subnet.private.id
  route_table_id = aws_route_table.private-rtb.id
  
  
}