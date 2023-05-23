# Creating A Routing Table 

resource "aws_route_table" "testcase_example" {
  vpc_id = aws_vpc.testcase_main.id

  # route {
  #   cidr_block = "10.0.1.0/24"
  #   gateway_id = aws_internet_gateway.igw_example.id
  # }

  tags = {
    Name = "Internet-Gateway-Example"
  }
}