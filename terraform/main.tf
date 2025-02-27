provider "aws" {
  region = "us-east-1"
}

data "aws_ami" "custom_ami" {
  most_recent = true
  owners      = ["self"]
  filter {
    name   = "name"
    values = ["custom-ubuntu-apache-*"]
  }
}

resource "aws_instance" "web" {
  ami           = data.aws_ami.custom_ami.id
  instance_type = "t2.micro"
  key_name      = "my-key"

  tags = {
    Name = "Apache-Server"
  }

  user_data = <<-EOF
              #!/bin/bash
              systemctl start apache2
              EOF
}
