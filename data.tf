data "azurerm_resource_group" "rg" {
  name = "project-setup"
}

output "id" {
  value = data.azurerm_resource_group.rg.id
}
