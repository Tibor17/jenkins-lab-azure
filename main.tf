terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.16.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "e0097b2b-0175-4c35-a7bf-b9f06b1d388e"
}

terraform {
  backend "azurerm" {
    resource_group_name  = "RG1"
    storage_account_name = "remotestatetibor123"
    container_name       = "terraform-state"
    key                  = "terraform.tfstate"
  }
}

resource "azurerm_resource_group" "example" {
  name     = "RG2"
  location = "westeurope"
}
