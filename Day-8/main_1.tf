provider "aws" {
 region = "us-east-1"
}

import {
  id = "<instanceID>"

  to = aws.instance.example
}
