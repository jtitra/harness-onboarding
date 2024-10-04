// Define the resources to create
// Provisions the following into AWS: 
//    VCP, Subnet, EC2 Instance
locals {
  creation_date = formatdate("YYYY-MM-DD", timestamp())
}

resource "aws_vpc" "main_vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "main vpc"
  }
}

resource "aws_subnet" "main_subnet" {
  vpc_id     = aws_vpc.main_vpc.id
  cidr_block = "10.0.1.0/24"
  tags = {
    Name = "main subnet"
  }
}

resource "aws_instance" "ec2" {
  instance_type = var.instance_type
  ami           = "ami-04e5276ebb8451442"
  count         = 3

  subnet_id = aws_subnet.main_subnet.id
  tags = merge(
    {
      Name          = "ec2-${count.index}"
      creation_date = local.creation_date
    },
    var.tags
  )
}
