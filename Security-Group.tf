

resource "aws_security_group" "testcase_sg" {
  name        = "testcase_sg"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.testcase_main.id

  ingress {
    description = "SSH from VPC"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    #  ipv6_cidr_blocks = ["0.0.0.0/0"]
  }


  ingress {
    description = "HTTPD from VPC"
    from_port   = 8080
    to_port     = 8080
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
    # ipv6_cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "testcase_sg"
  }
}