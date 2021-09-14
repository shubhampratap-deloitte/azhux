remote_state {
  backend = "azurerm"
  generate = {
    path      = "backend.tf"
    if_exists = "overwrite_terragrunt"
  }
  config = {
    resource_group_name  = "azhuxdemo"
    storage_account_name = "huxstore"
    container_name       = "huxcontainer"
    key                  = "dev.terraform.tfstate"
  }
}


  terraform {
    source = "../../src"
  }
  
  inputs = {
       location              = "West Europe"
       rg_name               = "terrarg1122"
       nsg_name              = "nsgdemo"
       name                  = "myproject"
       address_space         = "10.1.0.0/16"
    
       tags                  = {
                            environment = "test"
                            project = "test"
                        }
  }

