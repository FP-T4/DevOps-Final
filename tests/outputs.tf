output "PublicEC2IP" {
  value = aws_instance.Controller.public_ip
}

output "KeyName" {
  value = aws_instance.Controller.key_name
}

output "id" {
  value = aws_instance.Controller.id
}
