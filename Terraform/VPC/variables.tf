variable "vpc-cidr-block" {
  description = "CIDR block for VPC"
  default     = "10.0.0.0/16"
}

variable "dsn-cidr-block" {
  description = "CIDR block for Deployment Subnet"
  default     = "10.0.1.0/24"
}

variable "dsn2-cidr-block" {
  description = "CIDR block for Deployment Subnet"
  default     = "10.0.2.0/24"
}