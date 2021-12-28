resource "azurerm_resource_group" "rg" {
  name = var.rgname
  location = var.loc
}

resource "azurerm_virtual_network" "rg" {
  name                = var.vnetname
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  address_space       = var.vnetaddress

  subnet {
    name           = var.s1
    address_prefix = var.subnetaddress[0]
  }

  subnet {
    name           = var.s2
    address_prefix = var.subnetaddress[1]
  }

  subnet {
    name           = var.s3
    address_prefix = var.subnetaddress[2]
  }
  tags = var.tags
}