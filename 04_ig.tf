# 10.0.0.0/16 VPC 전용 Internet Gateway
resource "aws_internet_gateway" "shnam_ig" {
  vpc_id = aws_vpc.shnam_vpc.id
# vpc_id는 해당 vpc ip에 맞게 변경 되야함
  tags = {
    "Name" = "shnam-ig"
  }
}