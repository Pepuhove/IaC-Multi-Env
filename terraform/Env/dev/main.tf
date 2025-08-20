locals {
  instance_name = "${terraform.workspace}-instance"
}

provider "aws" {
  region = var.aws_region
}

resource "aws_instance" "web" {
  ami                    = var.aws_ami
  instance_type          = var.instance_type
  key_name               = var.key_pair
  subnet_id              = var.subnet_id
  vpc_security_group_ids = var.vpc_security_group_ids

  tags = {
    Name = local.instance_name
  }
}