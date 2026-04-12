
resource "azurerm_resource_group" "rg-block" {
  name = "vnet-rg"
  location = "eastus"
  
}

resource "azurerm_resource_group" "rg-block2" {
  name = "vm-rg"
  location = "eastus"
  
}



