resource "aws_security_group" "ec2-sg" {
  name        = "ec2-security-group"
  description = "security group for instance"
  vpc_id      = aws_vpc.vpc1.id

  ingress {
    description      = "allow http from alb"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    security_groups   = [aws_security_group.sg-alb.id]
   # cidr_blocks      = [aws_vpc.main.cidr_block]
   # ipv6_cidr_blocks = [aws_vpc.main.ipv6_cidr_block]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
   # ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "ec2-security-group"
  }
}