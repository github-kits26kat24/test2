# Creating A Subnet 

resource "aws_subnet" "ubuntu_main" {
  vpc_id     = aws_vpc.testcase_main.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "Ubuntu-Main"
  }
}

resource "aws_subnet" "redhat_main" {
  vpc_id     = aws_vpc.testcase_main.id
  cidr_block = "10.0.2.0/24"

  tags = {
    Name = "Redhat-Main"
  }
}