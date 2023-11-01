resource "aws_instance" "ec2-1" {
  instance_type          = "t2.micro"
  ami                    = "ami-01eccbf80522b562b"
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  subnet_id              = aws_subnet.private_subnet1.id
  user_data              = file("install_httpd.sh")
  associate_public_ip_address = true
  tags = {
    Name = "web-ec2-1"
  }
}
resource "aws_instance" "ec2-2" {
  instance_type          = "t2.micro"
  ami                    = "ami-01eccbf80522b562b"
  vpc_security_group_ids = [aws_security_group.ec2-sg.id]
  subnet_id              = aws_subnet.private_subnet2.id
  user_data              = file("install_httpd.sh")
  associate_public_ip_address = true
  tags = {
    Name = "web-ec2-2"
  }
}


  