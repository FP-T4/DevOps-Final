output "vpc_id" {
  value = aws_vpc.DeploymentVPC.id
}

output "dsn_id" {
  value = aws_subnet.DeploymentSubnet.id
}

output "dsn2_id" {
  value = aws_subnet.DeploymentSubnet2.id
}