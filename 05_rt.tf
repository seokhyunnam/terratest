resource "aws_route_table" "shnam_rf" {
  vpc_id = aws_vpc.shnam_vpc.id
# vpc_id는 해당 vpc ip에 맞게 변경 되야함
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.shnam_ig.id
# gateway_id 또한 해당 gateway_id에 맞게 변경 되야함
  }
  tags = {
    "Name" = "shnam-rt"
  }
}