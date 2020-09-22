# Deployment Log



## Setup Activities (Terraform +  Ansible)

For carrying out deployment, there will need to be an initial setup before automated deployment can take place which consists of provisioning the required network resources through the use of Terraform which also configures an EC2 instance to act as the controller node.

### Requirements

- GitHub Repository ()
- AWS CLI Installed & Configured
- Ansible Installed & Configured

Once the above requirements have been satisfied you can commence provisioning of the AWS network resources. CD into the directory and then run

- terraform init
- terraform plan 
- terraform apply

Provided all configurations have been correctly applied then the Terraform configuration should apply and provision the required AWS network resources. In the event of requiring a teardown of the network then run

- terraform destroy

Which will full destroy all the Terraform provided instances currently running on the network.

