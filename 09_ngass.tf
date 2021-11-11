resource "aws_route_table_association" "shnam_ngass_a" {
  subnet_id = aws_subnet.shnam_pria.id
  route_table_id = aws_route_table.shnam_ngrt.id
}

resource "aws_route_table_association" "shnam_ngass_c" {
  subnet_id = aws_subnet.shnam_pric.id
  route_table_id = aws_route_table.shnam_ngrt.id
}