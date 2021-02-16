resource "azurerm_virtual_network" "vnet" {
  name                = format("redisgeek-%s", random_string.vnet_name.result)
  depends_on          = [azurerm_resource_group.resource_group]
  resource_group_name = azurerm_resource_group.resource_group.name
  address_space       = ["10.0.0.0/24"]
  location            = var.location
}