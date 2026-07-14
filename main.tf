resource "azurerm_resource_group" "myrg"{
    name = "nan-rg"
    location = "CentralIndia"
}

resource "azurerm_virtual_network" "my-vnet"{
    name  = "vnet1"
    location = "CentralIndia"
    resource_group_name = azurerm_resource_group.myrg.name
    address_space = ["10.0.0.0/16"]
}
