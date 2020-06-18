output "rg_dep" {
  # Again, the value is not important because we're just
  # using this for its dependencies.
  value = "{module.resource-group.rg}"
  depends_on = [azurerm_resource_group.rg]
}
 