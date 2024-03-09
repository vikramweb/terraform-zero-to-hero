# MIGRATION TO TERRAFORM
provider "aws" {
 region = "us-east-1"
}

import {
  id = "<instanceID>" # Change with ur existing instance ID

  to = aws.instance.example
}
