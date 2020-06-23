# Create an app service
resource "azurerm_app_service" "app_service" {
  name                = var.as_name
  location            = var.location
  resource_group_name = var.rg_name
  app_service_plan_id = var.app_service_plan_id
  https_only          = var.https_only
  
  site_config {
    always_on = lookup(var.site_config, "always_on", true)
    dotnet_framework_version  = lookup(var.site_config, "dotnet_framework_version", null)
  }

  connection_string {
    name  = lookup(var.connection_string, "name", null)
    type  = lookup(var.connection_string, "type", null)
    value = lookup(var.connection_string, "value", null)
  }

  tags                = var.tags
}