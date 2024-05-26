## Create a EC2

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16" #1.0 até 1.0.n 
    }
  }

  required_version = ">= 1.2.0"

  backend local {
    name = "value"
  }
  
}

#who is the provider
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

#resource of your ec2
resource "aws_instance" "challenge_2" {
  ami           = var.instance_ami
  instance_type = var.instance_type

  tags = var.instance_tags

}


### IN TERMINAL ### 

## Terraform init
## Terraform plan 
## Terraform apply -auto-approve
## Terraform destroy