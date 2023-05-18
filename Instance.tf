# Creating An EC2 Instance

resource "aws_instance" "app_server" {
  ami           = "ami-00aa9d3df94c6c354"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.testcase_main.id
  key_name      = "Kitskat2023"
  tags = {
    Name = "helloworld"
  }
}