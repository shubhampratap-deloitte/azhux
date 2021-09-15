resource "azurerm_network_security_group" "security_group" {
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.rg_name
}

# Create VPC
resource "azurerm_virtual_network" "vpc" {
  name                = "vpc-${var.name}"
  address_space       = ["${var.address_space}"]
  location            = "${var.location}"
  resource_group_name = var.rg_name
  tags = "${var.tags}"

  
   subnet {
    name           = "web-public"
    address_prefix = "10.1.1.0/24"
  }

    subnet {
    name            = "app-public"
    address_prefix = "10.1.2.0/24"
  }
  
  subnet {
    name           = "db-private"
    address_prefix = "10.1.3.0/24"
    security_group = azurerm_network_security_group.security_group.id
  }

  subnet {
     name           = "dbn-private"
     address_prefix =  "10.1.4.0/24"
     security_group = azurerm_network_security_group.security_group.id
   }
}




