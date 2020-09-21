output "PublicEC2IP" {
  value = aws_instance.Controller.public_ip
  # Outputs the public IP address of the created instances
}

output "KeyName" {
  value = aws_instance.Controller.key_name
  # Outputs the name of the ssh key
}

output "id" {
  value = aws_instance.Controller.id
  # Outputs the ID of the newly created instance
}