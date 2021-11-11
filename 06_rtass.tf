resource "aws_route_table_association" "shnam_rtas_a" {
  subnet_id      = aws_subnet.shnam_puba.id
  route_table_id = aws_route_table.shnam_rf.id
}

resource "aws_route_table_association" "shnam_rtas_c" {
  subnet_id      = aws_subnet.shnam_pubc.id
  route_table_id = aws_route_table.shnam_rf.id
}
