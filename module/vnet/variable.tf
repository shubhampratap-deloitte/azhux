variable "location" {
    description = "The Azure Region in which the Resource Group exists"
}

variable "rg_name" {
    description = "The name of the Resource Group where VM resources will be created"
}

variable "name" {
    description = "The suffix for all VPC' resources"
}

variable "nsg_name" {
    description = "The suffix for all nsg' resources"
}

variable "address_space" {
    description = "The VPC address space"
}




variable "tags" {
    description = "List of tags should be associated on all resoruces"
    type = map
    default = {
        module = "module-azure-vpc"
    }
}

