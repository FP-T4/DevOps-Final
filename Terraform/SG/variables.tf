variable "name" {
  description = "Name of the security group"
  default     = "Deployment_SG"
}

variable "ingress_ports" {
  type        = list(number)
  description = "List of ingress ports"
  default     = [22]
}

variable "open-internet" {
  description = "CIDR block for the open internet"
  default     = "0.0.0.0/0"
}

variable "outbound-port" {
  description = "Outbound ports for communication"
  default     = 0
}

variable "vpc_id" {
  description = "ID of VPC"
  default     = "Pull from main.tf"
}

variable "vpc_security_group_ids" {
  description = "IDs of the security groups"
  default     = "Pull from main.tf"
}