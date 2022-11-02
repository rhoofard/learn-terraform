terraform {
  required_version = ">= 1.1.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
  
  #backend "remote" {
  #  organization = "ferrets"
  #  workspaces {
  #    name = "rhoofard-azure-workspace"
  #  }
  #}

}
provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = "RyanHoo-TFResourceGroup2"
  location = "westus2"
}


