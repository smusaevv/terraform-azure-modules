# Create an app service plan
resource "azurerm_app_service_plan" "app_service_plan" {
  name                = var.asp_name
  location            = var.location
  resource_group_name = var.rg_name
  kind                = var.kind
  reserved            = var.reserved
  tags                = var.tags
  depends_on          = [var.asp_depends_on]
  
  sku {
    capacity = lookup(var.sku, "capacity", null)
    size     = lookup(var.sku, "size", null)
    tier     = lookup(var.sku, "tier", null)
  }
}