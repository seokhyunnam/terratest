# data "aws_ami" "amzn" {
#   most_recent = true

#   filter {
#     name   = "name"
#     values = ["amzn2-ami-hvm-*-x86_64-gp2"]
#   }

#   filter {
#     name   = "virtualization-type"
#     values = ["hvm"]
#   }

#   owners = ["amazon"]
# }

resource "aws_instance" "shnam_weba" {
  ami                    = "ami-04e8dfc09b22389ad"
  instance_type          = "t2.micro"
  key_name               = "shnam2-key"
  availability_zone      = "ap-northeast-2a"
  private_ip             = "10.0.0.11"
  subnet_id              = aws_subnet.shnam_puba.id          #public_subnet 1의 id
  vpc_security_group_ids = [aws_security_group.shnam_sg.id]
  user_data              = file("./install.sh")              #워드프레스 관련 문서파일을 해당 위치로 위치시키고
 
 tags = {
    "Name" = "shnam-weba"
  }

}
resource "aws_eip" "shnam_web_eip" {
  vpc = true
  instance                    = aws_instance.shnam_weba.id
  associate_with_private_ip   = "10.0.0.11"
  depends_on                  = [
    aws_internet_gateway.shnam_ig
    ]
}

output "public_ip" {
  value = aws_instance.shnam_weba.public_ip
}