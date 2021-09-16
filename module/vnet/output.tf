

output "virtual_network_id" {
  value = "${azurerm_virtual_network.vpc.id}"
}

output "virtual_network_name" {
  value = "${azurerm_virtual_network.vpc.name}"
}


 output "security_id" {
   value = ["${azurerm_network_security_group.security_group.id}"]
 }




