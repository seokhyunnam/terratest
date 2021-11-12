resource "aws_ami_from_instance" "shnam_ami" {
  name               = "shnam-aws-ami"
  source_instance_id = aws_instance.shnam_weba.id

  depends_on = [
    aws_instance.shnam_weba                 #meta argument 이 아이부터 먼저 실행하라
  ]

  tags = {
    "Name" = "shnam-ami"
  }
}