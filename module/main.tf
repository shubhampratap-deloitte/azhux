module "resourcegroup" {
source = "./module/resourcegroup"
rg_name               = "terrarg"
location              = "West Europe"


}

module "vnet" {
source = "./module/vnet"
location              = "West Europe"
rg_name               = "terrarg"
nsg_name              = "nsgdemo"
vnet_name             = "vnet-demo"
address_space         = ["10.1.0.0/16"]
tags                  = {
                            environment = "test"
                            project = "test"
                        }

}

module "storage" {
source = "./module/storage"
rg_name                  = "terrarg"
location                 = "West Europe"
storage_container_name   = "container-demo"
account_tier             = "Standard"
account_replication_type = "LRS"

 }

module "subnet"{
source = "./module/subnet"
rg_name               = "terrarg"
vnet_name             = "vnet-demo"
subnet_name           = "subnet-demo"
prefix                = ["10.1.1.0/24"]

 }

module "vm"{
source = "./module/vm"
rg_name               = "terrarg"
location              = "West Europe"
nic_name              = "nic-ip"
subnet_id             = "${module.subnet.subnet_id}"

}