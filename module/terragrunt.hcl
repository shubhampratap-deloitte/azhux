remote_state {
    backend = "azurerm"
      generate = {
         path      = "backend.tf"
         if_exists = "overwrite_terragrunt"
  }

    config = {
        key = "${path_relative_to_include()}/terraform.tfstate"
        resource_group_name = "azhuxdemo"
        storage_account_name = "huxstore"
        container_name = "huxcontainer1"
    }
}

  
  inputs = {
       location              = "West Europe"
       rg_name               = "terrarg"
       nsg_name              = "nsgdemo"
       nic_name              = "nic-ip"
       vnet_name             = "vnet-demo"
       subnet_name           = "subnet-demo"
       storage_container_name  = "container-demo"
       name                  = "myproject"
       address_space         = ["10.1.0.0/16"]
       prefix                = ["10.1.1.0/24"]
       name_storage          = "storagehuxaz"
       account_tier          = "Standard"
       account_replication_type = "LRS"
    
       tags                  = {
                            environment = "test"
                            project = "test"
                        }
  }

