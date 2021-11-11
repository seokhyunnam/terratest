resource "aws_route_table" "shnam_ngrt" {
  vpc_id = aws_vpc.shnam_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.shnam_ng.id
  }

  tags = {
    "Name" = "shnam-ngrt"
  }
}