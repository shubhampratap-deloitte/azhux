
variable "subnet_name" {
    description = "The name of the subnet where VM resources will be created"
}
variable "rg_name" {
    description = "The name of the Resource Group where VM resources will be created"
}

variable "vnet_name" {
    description = "The name of the vnet where VM resources will be created"
}

variable "prefix" {
    description = "The name of the prefix where VM resources will be created"
    type = list
}