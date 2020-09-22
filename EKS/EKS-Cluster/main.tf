# Create an EKS Cluster
resource "aws_eks_cluster" "my_cluster" {
  name     = var.cluster_name
  role_arn = var.eks_cluster_role_arn

  vpc_config {
    subnet_ids              = [var.private_eks_subnet1_id]
    security_group_ids      = [var.eks_cluster_sec_group_id]
    endpoint_private_access = true
    endpoint_public_access  = true
  }
}

# Add EKS Node Group to Cluster.
resource "aws_eks_node_group" "eks_node_group" {
  depends_on      = [aws_eks_cluster.my_cluster]
  cluster_name    = var.cluster_name
  node_group_name = "FP-T1_${var.environment}_Node_Group"
  node_role_arn   = var.eks_node_role_arn
  subnet_ids      = [var.private_eks_subnet1_id]
  instance_types  = [var.eks_node_instance_types]

  remote_access {
    ec2_ssh_key               = var.ssh_key_pair_name
    source_security_group_ids = [var.eks_node_sec_group_id]
  }

  scaling_config {
    min_size     = 1
    max_size     = var.maximum_node_group_size
    desired_size = var.desired_node_group_size
  }
}