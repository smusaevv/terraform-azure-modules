data "azurerm_app_service" "app_service_plan" {
  name                = var.asp_name
  resource_group_name = var.rg_name
}

# Create an app service
resource "azurerm_app_service" "app_service" {
  name                = var.as_name
  location            = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = azurerm_app_service_plan.app_service_plan_id
  # app_service_plan_id = module.app-service-plan.as_plan_id
  tags                = var.tags
}