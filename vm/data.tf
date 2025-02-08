data "azurerm_resource_group" "rg" {
  name = "project-setup"
}

output "id" {
  value = data.azurerm_resource_group.rg
}


data "azurerm_virtual_network" "virtual_net" {
  name                = "project-setup-network"
  resource_group_name = "project-setup"
}

output "virtual_network_id" {
  value = data.azurerm_virtual_network.virtual_net
}


data "azurerm_subnet" "subnet" {
  name                 = "default"
  virtual_network_name = "project-setup-network"
  resource_group_name  = "project-setup"
}

output "subnet_id" {
  value = data.azurerm_subnet.subnet
}

data "azurerm_network_security_group" "main" {
  name                = "Allow-all"
  resource_group_name = data.azurerm_resource_group.rg.name
}

output "location" {
  value = data.azurerm_network_security_group.main.location
}