# Creating A VPC
# Resource: aws_vpc
resource "aws_vpc" "testcase_main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  tags = {
    Name = "Testcase"
  }
}

output "Vpc_id" {
  value = aws_vpc.testcase_main.id
}