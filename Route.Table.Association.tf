# Creating A Routing Table Association

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.ubuntu_main.id
  route_table_id = aws_route_table.testcase_example.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.redhat_main.id
  route_table_id = aws_route_table.testcase_example.id
}