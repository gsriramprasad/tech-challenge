# EC2 Instances (Web, App, and DB)
resource "aws_instance" "web_instance" {
  ami           = "ami-123456"
  instance_type = "var.web_instance_type"
  subnet_id     = aws_subnet.web_subnet.id
  security_groups = [aws_security_group.web_sg.id]

  tags = {
    Name = "web-server"
  }
}

resource "aws_instance" "app_instance" {
  ami           = "ami-123456"  
  instance_type = "var.app_instance_type"
  subnet_id     = aws_subnet.app_subnet.id
  security_groups = [aws_security_group.app_sg.id]

  tags = {
    Name = "app-server"
  }
}

resource "aws_instance" "db_instance" {
  ami           = "ami-123456"  
  instance_type = "var.db_instance_type"
  subnet_id     = aws_subnet.db_subnet.id
  security_groups = [aws_security_group.db_sg.id]

  tags = {
    Name = "db-server"
  }
}