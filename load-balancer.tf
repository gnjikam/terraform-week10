resource "aws_lb" "alb" {
  name               = "application-lb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.sg-alb.id]
  subnets            = ["${aws_subnet.public_subnet1.id}" , "${aws_subnet.public_subnet2.id}"]

  enable_deletion_protection = false
  tags               = {
    Name = "application-lb"
  }
}