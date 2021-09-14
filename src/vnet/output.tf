output "resource_group_id" {
  value = "${azurerm_resource_group.rg.id}"
}

output "resource_group_name" {
  value = "${azurerm_resource_group.rg.name}"
}

output "virtual_network_id" {
  value = "${azurerm_virtual_network.vpc.id}"
}

output "virtual_network_name" {
  value = "${azurerm_virtual_network.vpc.name}"
}


output "security_id" {
  value = ["${azurerm_network_security_group.security_group.id}"]
}


