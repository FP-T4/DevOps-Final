variable "subnet_id" {
  description = "Required default value, will be added in the primary main.tf"
  default     = "Null"
}

variable "subnet2_id" {
  description = "Required default value, will be added in the primary main.tf"
  default     = "Null"
}

variable "vpc_security_group_ids" {
  default = "This should be overridden in the primary main.tf"
}