resource "aws_lb_target_group_attachment" "shnam_tgatt" {
  target_group_arn = aws_lb_target_group.shnam_albtg.arn
  target_id        = aws_instance.shnam_weba.id    
  port             = 80
}