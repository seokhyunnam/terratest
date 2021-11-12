resource "aws_autoscaling_attachment" "shnam_asgalbatt" {
  autoscaling_group_name = aws_autoscaling_group.shnam_asg.id
  alb_target_group_arn = aws_lb_target_group.shnam_albtg.arn
}