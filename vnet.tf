# Create a resource group
resource "azurerm_resource_group" "rg_01" {
  name     = "rg-hans-tfcloud-dev-001"
  location = "West Europe"
}

resource "azurerm_resource_group" "rg_02" {
  name     = "rg-hans-tfcloud-dev-002"
  location = "West Europe"
}

# Create a virtual network within the resource group
resource "azurerm_virtual_network" "vnet_01" {
  name                = "vnet-hans-tfcloud-dev-001"
  resource_group_name = azurerm_resource_group.rg_01.name
  location            = azurerm_resource_group.rg_01.location
  address_space       = ["10.10.0.0/16"]
}