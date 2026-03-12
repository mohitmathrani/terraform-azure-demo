resource "azurerm_resource_group" "rg" {
  name     = "rg-terraform-demo"
  location = "East US"
}

resource "azurerm_storage_account" "storage" {
  name                     = "mohitterraformstorage123"
  resource_group_name      = azurerm_resource_group.rg.name
  location                 = azurerm_resource_group.rg.location
  account_tier             = "Standard"
  account_replication_type = "LRS"

  tags = {
    environment = "demo"
  }
}