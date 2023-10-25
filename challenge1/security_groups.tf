# Security Groups
resource "aws_security_group" "web_sg" {
  name        = "web-sg"
  description = "Security Group for Web Tier"
  vpc_id      = aws_vpc.my_vpc.id
}

resource "aws_security_group" "app_sg" {
  name        = "app-sg"
  description = "Security Group for Application Tier"
  vpc_id      = aws_vpc.my_vpc.id
}

resource "aws_security_group" "db_sg" {
  name        = "db-sg"
  description = "Security Group for Database Tier"
  vpc_id      = aws_vpc.my_vpc.id
}