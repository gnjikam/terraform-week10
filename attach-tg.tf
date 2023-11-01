resource "aws_lb_target_group_attachment" "attach-ec2-1" {
  target_group_arn =  aws_lb_target_group.alb-tg.arn 
  target_id        = aws_instance.ec2-1.id
  port             = 80
}

resource "aws_lb_target_group_attachment" "attach-ec2-2" {
  target_group_arn = aws_lb_target_group.alb-tg.arn 
  target_id        = aws_instance.ec2-2.id
  port             = 80
}