# Create an app service
resource "azurerm_app_service" "app_service" {
  name                = var.as_name
  location            = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = var.app_service_plan_id
  tags                = var.tags
}