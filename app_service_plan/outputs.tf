# output "as_plan_id" {
#   value = "{azurerm_app_service_plan.app_service_plan.id}"
# } 

output "app_service_plan_id" {
  value = data.azurerm_app_service_plan.app_service_plan.id
}