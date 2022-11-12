# creating vpc
resource "aws_vpc" "Adu_VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Adu_VPC"
  }
}

resource "aws_vpc" "Adu_Daps_VPC" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "Adu_Daps_VPC"
  }
}

# private-subnet
resource "aws_subnet" "Adu-private-sub" {
  vpc_id     = aws_vpc.Adu_VPC.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Adu-private-sub"
  }
}

# creating ec2

resource "aws_instance" "my-first-instance" {
  ami           = "ami-060c0d1361bbd1bd7"
  instance_type = "t2.micro"

  tags = {
    Name = "EC2_Terra"
  }
}

