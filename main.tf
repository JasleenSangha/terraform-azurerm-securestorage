terraform {
    required_version=">=1.3.0"
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = ">= 3.43"
    }
  }
}

resource "azurerm_storage_account" "securestorage" {
  name                     = "var.storage_account_name"
  resource_group_name      = "var.resource_group_name"
  location                 = "var.location"
  account_tier             = "var.account_tier"
  account_replication_type = "car.account_replication_type"
}