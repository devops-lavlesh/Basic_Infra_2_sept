terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.40.0"
    }
  }
  backend "azurerm" {
    subscription_id = "b3b6b7ed-0b15-49ca-b3ce-092e07ca3fef"
    resource_group_name   = "autopiperg"
    storage_account_name  = "githubstorageacnt"
    container_name        = "tfstate"
    key                   = "dev.terraform.tfstate"
    
  }
}

provider "azurerm" {
  features {}

  subscription_id = "b3b6b7ed-0b15-49ca-b3ce-092e07ca3fef"
}