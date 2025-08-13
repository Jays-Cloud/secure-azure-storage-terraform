terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
    version = "~> 3.50"
    }
  }
}

provider "azurerm" {
  features {}
}
data "azurerm_resource_group" "rg" {
  name = "Terraform_Projects"
}
resource "azurerm_storage_account" "storage" {
  name                     = "terraformteststorage30"
  resource_group_name      = data.azurerm_resource_group.rg.name
  location                 = data.azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "ZRS"
  account_kind             = "StorageV2"

  https_traffic_only_enabled = true
  infrastructure_encryption_enabled = true

  blob_properties {
    delete_retention_policy {
        days = 7
    }
    versioning_enabled = true
    change_feed_enabled = true
    }

  tags = {
    environment = "staging"
  }
}