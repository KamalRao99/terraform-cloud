provider "aws" {
  region  = "sa-east-1"
  access_key=var.AWS_ACCESS_KEY
  secret_key=var.AWS_SECRET_KEY
}

resource "aws_instance" "example" {
  ami           = "ami-00eeedc4036573771"
  instance_type = "t2.micro"
  tags = {
    Name = "hello world"
  }
}
