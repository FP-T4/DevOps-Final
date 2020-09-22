variable "ami" {
  description = "AMI ID of ubuntu 18.04LTS eu-west-1"
  default     = "ami-04137ed1a354f54c4"
}

variable "instance_type" {
  description = "Type of instance to be started up"
  default     = "t2.micro"
}

variable "key_name" {
  description = "AWS Key Name"
  default     = "instance1-keypair"
}

variable "subnet_id" {
  description = "Required default value, will be added in the primary main.tf"
  default     = "Null"
}

variable "vpc_sg_ids" {
  description = "IDs of the security groups that this instance will belong to."
  default     = "Pull from main.tf"
}

variable "tags" {
  description = "Tags to be applied to the EC2 Instances"
  default = {
    Name        = "Default Instance Name"
    Description = "Default Instance Description"
  }
}

variable "associate_public_ip_address" {
  description = "Should this EC2 instance have a public ip addresss"
  default     = true
}

