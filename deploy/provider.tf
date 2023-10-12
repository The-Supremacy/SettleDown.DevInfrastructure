terraform {
  required_version = ">=0.12"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "~>3.0"
    }
  }

  backend "azurerm" {
    resource_group_name  = "rg-settledown-tfstate-shd-ne-001"
    storage_account_name = "stsdtfstateshdne001"
    container_name       = "tfstate-devinfra"
    key                  = "devinfra.terraform.tfstate"

    client_id       = var.client_id
    client_secret   = var.client_secret
    tenant_id       = var.tenant_id
    subscription_id = var.subscription_id
  }
}

provider "azurerm" {
  features {}
}