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
    tags     = var.tags
}

# Create an app service plan
module "app-service-plan" {
    source   = "./app_service_plan"
    asp_name        = var.asp_name
    location        = var.location
    rg_name         = var.rg_name
    kind            = var.kind
    reserved        = var.reserved
    asp_depends_on  = [module.resource-group.rg_dep]

    sku = {
    capacity = lookup(var.sku, "capacity", null)
    size     = lookup(var.sku, "size", "S1")
    tier     = lookup(var.sku, "tier", "Standard")
    }

    tags            = var.tags
}

# Create an app service
module "app-service" {
    source   = "./app_service"
    as_name             = var.as_name
    location            = var.location
    rg_name             = var.rg_name
    app_service_plan_id = module.app-service-plan.asp_id
    tags                = var.tags
}