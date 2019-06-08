provider "aws" {
  region = "eu-east-1"
}
resource "aws_instance" "MyTest" {
  ami           = "ami-098bb5d92c8886ca1"
  instance_type = "t2.micro"
  key_name = "Key name"
  security_groups = [ "security group names" ]
  tags = {
    terraform = "true"
    env       = "Dev"
    Name      = "My First Server"
  }
  root_block_device  {
      volume_type = "gp2"
      volume_size = 25
  }
}
