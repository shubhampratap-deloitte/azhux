module "resourcegroup" {
source = "/home/vito/azhux1/module/resourcegroup"
rg_name               = "terrarg"
location              = "West Europe"


}

module "vnet" {
source = "/home/vito/azhux1/module/vnet"
location              = "West Europe"
rg_name               = "terrarg"
nsg_name              = "nsgdemo"
name                  = "myproject"
address_space         = "10.1.0.0/16"
tags                  = {
                            environment = "test"
                            project = "test"
                        }
}

module "storage" {
source = "/home/vito/azhux1/module/storage"
rg_name                  = "terrarg"
location                 = "West Europe"
account_tier             = "Standard"
account_replication_type = "LRS"
 }