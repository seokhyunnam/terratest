resource "aws_autoscaling_group" "shnam_asg" {
  name                      = "shnam-asg"
  max_size                  = 10
  min_size                  = 2
  health_check_grace_period = 10
  health_check_type         = "EC2"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.shnam_aslc.name
  vpc_zone_identifier       = [aws_subnet.shnam_puba.id,aws_subnet.shnam_pubc.id]
}