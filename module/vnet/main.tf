resource "azurerm_network_security_group" "security_group" {
   name                = var.nsg_name
   location            = var.location
   resource_group_name = var.rg_name
 }

# Create VPC
resource "azurerm_virtual_network" "vpc" {
  name                = var.vnet_name
  address_space       = var.address_space
  location            = var.location
  resource_group_name = var.rg_name
  tags = var.tags

}






