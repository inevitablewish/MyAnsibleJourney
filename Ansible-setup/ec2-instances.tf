##################################################################################
# DATA
##################################################################################

data "aws_ssm_parameter" "ami" {
  name = "/aws/service/ami-amazon-linux-latest/amzn2-ami-hvm-x86_64-gp2"
}

# INSTANCES #
resource "aws_instance" "mohsin-tf-public" {
  ami                    = nonsensitive(data.aws_ssm_parameter.ami.value)
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.public.id
  vpc_security_group_ids = [aws_security_group.public-sg.id]
  key_name = "terraform"
  user_data = <<EOF
!/bin/bash
sudo yum update -y
sudo amazon-linux-extras install ansible2 -y
 EOF

tags = {
    Name = "Mohsin-Public-Instance"
  }
}

resource "aws_instance" "mohsin-tf-private" {
  ami                    = nonsensitive(data.aws_ssm_parameter.ami.value)
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.private.id
  vpc_security_group_ids = [aws_security_group.private-sg.id]
  count=2
  key_name = "terraform"
  
tags = {
    Name = "Mohsin-Private-Instance"
  }


}