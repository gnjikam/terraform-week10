output "load_balancer_dns_name" {
  value = aws_lb.alb.dns_name
}
# print the url of the webserver 1
output "web-ec2-1_public_dns" {
    value = aws_instance.ec2-1.public_dns
}
# print the url of the webserver 2
output "web-ec2-2_public_dns" {
    value = aws_instance.ec2-2.public_dns
}