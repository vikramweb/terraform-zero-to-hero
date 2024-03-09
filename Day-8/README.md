# MIGRATION TO TERRAFORM & DRIFT DETECTION

https://youtu.be/-4IMy5ihiiU

Interview Questions:
1. How do you implement the terraform to existing infrastructure?

Initiate Terraform: 
terraform init

Create the configuration file:
terraform plan -generate-config-out=generated_resourses.tf 

The above command will create a configuration file and import the configuration of specified EC2 instance (please refer to main.tf file).
Copy the whole information from the generated configuration file and paste it in the main.tf file.

Create the terraform tfstate file:
terraform import aws_instance.example <instanceID>

Once state file is created, terraform will undestand about existing infrastructure. 
now hit the command call: terraform plan
It will show no changes to add.
