variable "environment" {
  description = "infrastructure env"
  default     = "So Tired"
}

# ----- SUBNETS -----
variable "private_eks_subnet1_id" {
  description = "The AWS ID belonging to our private subnet."
  default     = "So Tired"
}
# ----------

variable "eks_cluster_role_arn" {
  description = "Aws ARN for IAM role for the EKS cluster."
  default     = "So Tired"
}

variable "eks_node_role_arn" {
  description = "Aws ARN for IAM role for the EKS nodes."
  default     = "So Tired"
}

variable "eks_cluster_sec_group_id" {
  description = "The ID for the EKS cluster security group."
  default     = "So Tired"
}

variable "eks_node_sec_group_id" {
  description = "The ID for the EKS node security group."
  default     = "So Tired"
}

variable "ssh_key_pair_name" {
  description = "The SSH Key Pair name."
  default     = "So Tired"
}

variable "maximum_node_group_size" {
  description = "The maximum number of nodes in our node scaling group."
  default     = "So Tired"
}

variable "desired_node_group_size" {
  description = "The desired number of nodes in our node scaling group."
  default     = "So Tired"
}

variable "cluster_name" {
  description = "The name of our cluster."
  default     = "So Tired"
}

variable "eks_node_instance_types" {
  description = "..."
  default     = "So Tired"
}