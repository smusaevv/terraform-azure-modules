# Configure the Azure Provider
provider "azurerm" {
  # while the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  features {}
}

# Create a resource group
module "resource-group" {
    source   = "./resource_group"
    rg_name  = var.rg_name
    location = var.location
}
