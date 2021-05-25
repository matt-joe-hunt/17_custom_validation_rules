provider "aws" {
  region = "eu-west-2"
}

resource "aws_instance" "simple-ec2" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  associate_public_ip_address = true
}