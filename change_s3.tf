# Change S3 
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

resource "aws_s3_bucket" "my-test-bucket142" {
  bucket = "my-tf-test-bucket-1242342534389798"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
    ManagedBy   = "Terraform"
    Owner       = "Debora B"
    Update      = "2024-04-27"
  }
}


## IN TERMINAL ##

# terraform validate
# terraform fmt (formatar no padrão do terraform o codigo)
# terraform plan -out="tfplan.out"