terraform {
  required_version = ">= 1.2.0"

  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "3.105.0"
    }
  }

  
}


# Configure the Microsoft Azure Provider
provider "azurerm" {
  features {}
}