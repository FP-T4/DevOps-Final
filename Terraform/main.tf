provider "aws" {
  version                 = "~> 2.0"
  region                  = "eu-west-1"
  shared_credentials_file = "~/.aws/credentials"
}

module "aws_vpc" {
  source = "./VPC"
}

module "deployment_sg" {
  source        = "./SG"
  name          = "DeploymentSG"
  vpc_id        = module.aws_vpc.vpc_id
  ingress_ports = var.HTTP-ports
}

module "Controller_Node" {
  source                 = "./EC2"
  subnet_id              = module.aws_vpc.vpc_id
  vpc_sg_ids             = module.deployment_sg.aws_wsg_id
  tags = {
    Name = "Deployment_Controller_Node"
  }
  associate_public_ip_address = true
}