resource "azurerm_storage_account" "storagehux" {
  name                     = "storagehuxaz"
  resource_group_name      = var.rg_name
  location                 = var.location
  account_tier             = var.account_tier
  account_replication_type = var.account_replication_type

  tags = {
    environment = "staging"
  }
}
resource "azurerm_storage_container" "container" {
  name                  = var.storage_container_name
  storage_account_name  = azurerm_storage_account.storagehux.name
  container_access_type = "private"
 
}

resource "azurerm_storage_blob" "blob" {
  name                   = "demoa"
  storage_account_name   = azurerm_storage_account.storagehux.name
  storage_container_name = azurerm_storage_container.container.name
  type                   = "Block"
}

resource "azurerm_storage_queue" "queue" {
  name                 = "demob"
  storage_account_name = azurerm_storage_account.storagehux.name
}

resource "azurerm_storage_table" "table" {
  name                 = "demoC"
  storage_account_name = azurerm_storage_account.storagehux.name
}
