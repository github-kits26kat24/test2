# Creating A INTERNET GATEWAY

resource "aws_internet_gateway" "igw_example" {
  vpc_id = aws_vpc.testcase_main.id

  tags = {
    Name = "main"
  }
}