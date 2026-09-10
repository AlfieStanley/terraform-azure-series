terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 4.0"
    }
  }

  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "example" {
  name     = "rg-terraform-github-test-uks"
  location = var.location

  tags = {
    environment = "test"
    managed_by  = "terraform"
    source      = "github-actions"
  }
}
