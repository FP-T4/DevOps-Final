output "EC2_Controller_SSH" {
  value = "sudo ssh -i ~/.ssh/${module.Controller_Node.KeyName}.pem ubuntu@${module.Controller_Node.PublicEC2IP}"
}