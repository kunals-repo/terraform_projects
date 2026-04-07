
resource "azurerm_resource_group" "rg-block" {
  name = "rg1"
  location = "eastus"
  
}
resource "azurerm_virtual_network" "vnet-block" {
  name = "vnet1"
  resource_group_name = azurerm_resource_group.rg-block.name
  location = azurerm_resource_group.rg-block.location
  address_space = ["10.0.0.0/24"]
}
