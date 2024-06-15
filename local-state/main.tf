# Create this for learning about tfstate
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

  default_tags {
    tags = {
      owner    = "DeboraB"
      ManageBy = "Terraform"
    }
  }
}

