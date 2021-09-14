resource "azurerm_network_security_group" "security_group" {
  name                = "${var.nsg_name}"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
}

# Create VPC
resource "azurerm_virtual_network" "vpc" {
  name                = "vpc-${var.name}"
  address_space       = ["${var.address_space}"]
  location            = "${var.location}"
  resource_group_name = "${azurerm_resource_group.rg.name}"
  tags = "${var.tags}"

  
   subnet {
    name           = "subnet1"
    address_prefix = "10.1.1.0/24"
  }

    subnet {
    name            = "subnet2"
    address_prefix = "10.1.2.0/24"
  }
  
  subnet {
    name           = "subnet3"
    address_prefix = "10.1.3.0/24"
    security_group = azurerm_network_security_group.security_group.id
  }

  subnet {
     name           = "subnet4"
     address_prefix =  "10.1.4.0/24"
     security_group = azurerm_network_security_group.security_group.id
   }
}




