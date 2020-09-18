resource "aws_vpc" "DeploymentVPC" {
  cidr_block = var.vpc-cidr-block
  tags = {
    Name = "AWS_VPC"
  }
}
