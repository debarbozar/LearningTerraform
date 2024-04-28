## Create a EC2

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

#who is the provider
provider "aws" {
  region  = "us-east-1"
  profile = "tf"
}

#resource of your ec2
resource "aws_instance" "challenge_2" {
  ami           = "ami-04e5276ebb8451442"
  instance_type = "t2.micro"

  tags = {
    Name = "LaunchEC2"
  }
}

## Terraform init
## Terraform plan
## Terraform destroy
## Terraform aplly