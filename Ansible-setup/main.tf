##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  profile = var.aws_profile_name
}

##################################################################################
# RESOURCES
##################################################################################

# NETWORKING #
resource "aws_vpc" "vpc" {
  cidr_block           = var.vpc_cidr_block
  enable_dns_hostnames = var.enable_dns_hostname
  #tags= local.common_tags
  tags = {
    Name = "mohsin-vpc"
  }
}
#Internet Gateway
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags= local.common_tags

}
