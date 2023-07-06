terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0.2"
    }
  }
    backend "azurerm" {
        resource_group_name  = "tfstate"
        storage_account_name = "shivammaurya286"
        container_name       = "tfstate"
        key                  = "terraform.tfstate"
        access_key = "TXvlNQ3eJwuvhASL4Vs8Vf0+bIXl2or8MRUrhWZ0Ug6rXaag1TavHqGFn9Z8923EDKRrKZJeyes8+ASt7Kj1Cg=="
    }

}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "state-demo-secure" {
  name     = "state-demo"
  location = "eastus"
}
