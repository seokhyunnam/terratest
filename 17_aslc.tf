resource "aws_launch_configuration" "shnam_aslc" {
  name_prefix          = "shnam-web-"
  image_id             = aws_ami_from_instance.shnam_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups = [aws_security_group.shnam_sg.id]
  key_name = "shnam2-key"
  # user_data = file("./install.sh")

  lifecycle {                         #meta argument
    create_before_destroy = true      #업데이트 안되면 삭제하고 다시 만들어라
  }
}