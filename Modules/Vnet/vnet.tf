resource "azurerm_network_security_group" "nsg_john" {
  name                = var.nsg_name
  location            = var.location_name
  resource_group_name = var.rg_name
}

resource "azurerm_virtual_network" "vnetjohn" {
  name                = "vnetjohn"
  location            = var.location_name
  resource_group_name = var.rg_name
  address_space       = ["10.0.0.0/16"]
  dns_servers         = var.dns_servers

  subnet {
    name           = "subnet1"
    address_prefix = "10.0.2.0/24"
    security_group = azurerm_network_security_group.nsg_john.id
  }

  tags = {
    environment = "AzureAcademy"
  }
}