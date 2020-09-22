variable "vpc-cidr-block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "dsn-cidr-block" {
  description = "CIDR block for Deployment Subnet"
  default     = "10.0.1.0/24"
}