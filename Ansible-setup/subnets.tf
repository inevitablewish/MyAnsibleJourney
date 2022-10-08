resource "aws_subnet" "public" {
  cidr_block              = var.vpc_public_cidr_block
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = var.map_public_ip_on_launch

  tags= {
    Name= "Public Subnet"
  }
}

resource "aws_subnet" "private" {
  cidr_block              = var.vpc_private_cidr_block
  vpc_id                  = aws_vpc.vpc.id
  map_public_ip_on_launch = false

  tags= {
    Name= "Private Subnet"
  }
}