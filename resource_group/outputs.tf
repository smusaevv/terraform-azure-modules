output "rg_dep" { 
 #  Anything that refers to this output must wait until
  # the actions for azurerm_resource_group.rg to have completed first.
   value = azurerm_resource_group.rg
}
 