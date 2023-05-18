# Creating A Subnet 

resource "aws_subnet" "testcase_main" {
  vpc_id     = aws_vpc.testcase_main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Main"
  }
}