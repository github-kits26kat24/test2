# Creating An EC2 Instance

# Resource: aws_instance
# https://registry.terraform.io/providers/hashicorp/aws/3.73.0/docs/resources/instance
resource "aws_instance" "Ubuntu-App" {
  ami           = "ami-00aa9d3df94c6c354"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.ubuntu_main.id
  count         = 1
  key_name      = "Kitskat2023"
  tags = {
    Name = "Ubuntu"
  }
}

resource "aws_instance" "Redhat-App" {
  ami           = "ami-0b04ce5d876a9ba29"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.redhat_main.id
  count         = 1
  key_name      = "Kitskat2023"
  tags = {
    Name = "Redhat"
  }
}