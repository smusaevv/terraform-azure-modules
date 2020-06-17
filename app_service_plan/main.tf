# Configure the Azure Provider
provider "azurerm" {
  # while the `version` attribute is optional, we recommend pinning to a given version of the Provider
  version = "=2.0.0"
  features {}
}

# Create an app service plan
resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.asp
  location            = var.location
  resource_group_name = var.rg_name
  kind                = var.kind
  reserved            = var.reserved
  tags                = var.tags
  #depends_on          = [azurerm_resource_group.rg]

  sku {
    tier = "Standard"
    size = "S1"
  }  
}
