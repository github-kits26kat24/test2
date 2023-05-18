# Creating A VPC

resource "aws_vpc" "testcase_main" {
  cidr_block = "10.0.0.0/16"
}