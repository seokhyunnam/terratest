resource "aws_eip" "shnam_eip_ng" {
  vpc = true
}

resource "aws_nat_gateway" "shnam_ng" {
  allocation_id = aws_eip.shnam_eip_ng.id
  subnet_id = aws_subnet.shnam_puba.id
  tags = {
    "Name" = "shnam-ng"
  }
  depends_on = [
    aws_internet_gateway.shnam_ig
  ]
}