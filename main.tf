
resource "azurerm_resource_group" "rg-block" {
  name = "storage-rg"
  location = "eastus"
  
}

resource "azurerm_storage_account" "storage-block" {
  name                     = "trunoteacct"
  resource_group_name      = azurerm_resource_group.rg-block.name
  location                 = azurerm_resource_group.rg-block.location
  account_tier             = "Standard"
  account_replication_type = "LRS"
  account_kind             = "StorageV2"

}