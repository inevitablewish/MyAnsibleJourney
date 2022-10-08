##################################################################################
# PROVIDERS
##################################################################################
variable "aws_profile_name" {
    type = string
    description = "AWS Profile Name on your computer"
    sensitive = true
}

variable "enable_dns_hostname" {
    type = bool
    description = "Enable or Disable DNS Hostname in VPC"
    default = true
}

variable "vpc_cidr_block" {
    type = string
    description = "Base CIDR Block for VPC"
    default = "10.0.0.0/16"
}

variable "vpc_name" {
    type = string
    description = "Name of the VPC"
    default = "Mohsin_Terraform_Training"
}

variable "vpc_public_cidr_block" {
    type = string
    description = "CIDR Block for subnet 1 in VPC" 
    default = "10.0.0.0/24"
}

variable "vpc_private_cidr_block" {
    type = string
    description = "CIDR Block for subnet 2 in VPC" 
    default = "10.0.1.0/24"
}

variable "map_public_ip_on_launch" {
    type = bool
    description = "Map a Public IP address for subnet instances" 
    default = true
}

variable "instance_type" {
    type = string
    description = "Type of Ec2 Instance" 
    default = "t2.micro"
}

variable "company" {
    type = string
    description = "Company name for resource tagging" 
    default = "Globomantics"
}

variable "project" {
  type        = string
  description = "Project name for resource tagging"
}

variable "billing_code" {
  type        = string
  description = "Billing code for resource tagging"
}