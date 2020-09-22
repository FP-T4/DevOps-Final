resource "aws_instance" "Controller" {
  ami                         = var.ami
  instance_type               = var.instance-type
  key_pair                    = var.key-pair
  subnet_id                   = var.subnet_id
  vpc_sg_ids                  = [var.vpc_sg_ids]
  tags                        = var.tags
  associate_public_ip_address = var.associate_public_ip_address

  lifecycle {
    create_before_destroy = true
  }
}