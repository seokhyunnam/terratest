resource "aws_lb" "shnam_alb" {
  name               = "shnam-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.shnam_sg.id]
  subnets            = [aws_subnet.shnam_puba.id,aws_subnet.shnam_pubc.id]

  tags = {
    "Name" = "shnam-alb"
  }
}

output "alb_dns" {
  value = aws_lb.shnam_alb.dns_name
}