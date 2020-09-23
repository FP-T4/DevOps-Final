provider "aws" {
  version                 = "~> 2.0"
  region                  = var.region
  shared_credentials_file = "~/.aws/credentials"
}

resource "aws_instance" "Testing" {
  ami                         = var.ami
  instance_type               = var.instance_type
  key_name                    = var.key_name
  tags                        = var.tags
  associate_public_ip_address = var.associate_public_ip_address
}
