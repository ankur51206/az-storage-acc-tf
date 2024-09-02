provider "azurerm" {
  features {}

  client_id       = var.client_id
  client_secret   = var.client_secret
  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

terraform {
  backend "azurerm" {
    resource_group_name  = "realimmerse_group"    # Replace with your resource group
    storage_account_name = "realimmersegroupdiag"     # Your storage account name
    container_name       = "tfstate"          # The container name created in Azure Storage
    key                  = "terraform.tfstate"         # The name of the state file
  }
}
