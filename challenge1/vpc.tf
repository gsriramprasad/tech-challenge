# VPC and Subnets
resource "aws_vpc" "my_vpc" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_subnet" "web_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-east-1a"
}

resource "aws_subnet" "app_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-east-1b"
}

resource "aws_subnet" "db_subnet" {
  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-east-1c"
}