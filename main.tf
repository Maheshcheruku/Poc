#configure azurerm provider
provider "azurerm" {
  version = "1.38"
}

#create resource group
resource "azurerm_resource_group" "rg" {
    name     = "rg-remotestatedemo"
    location = "westus2"
}