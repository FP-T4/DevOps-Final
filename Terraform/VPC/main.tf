resource "aws_vpc" "DeploymentVPC" {
  cidr_block = var.vpc-cidr-block
  tags = {
    Name = "AWS_VPC"
  }
}

data "aws_availability_zones" "available" {
  state = "available"
}

resource "aws_subnet" "DeploymentSubnet"{
  cidr_block        = var.dsn-cidr-block
  availability_zone = data.aws_availability_zones.available.names[0]
  vpc_id            = aws_vpc.DeploymentVPC.id
}

resource "aws_internet_gateway" "IGW" {
  vpc_id = aws_vpc.DeploymentVPC.id

  tags = {
    Name = "Deployment VPC Internet Gateway"
  }
}

resource "aws_route_table" "RT" {
  vpc_id = aws_vpc.DeploymentVPC.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.IGW.id
  }
  tags = {
    Name = "Route Table for VPC"
  }
}

resource "aws_route_table_association" "Deployment_RTA" {
  subnet_id      = aws_subnet.DeploymentSubnet.id
  route_table_id = aws_route_table.RT.id
}