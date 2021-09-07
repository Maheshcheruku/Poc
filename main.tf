terraform {
  backend "azurerm" {
    subscription_id      = "fcedf982-5b4a-44d2-b26d-9aa11cebcddf"
    tenant_id            = "ec27f9db-755f-4aa0-b06f-5f66f3d6e833"  
    resource_group_name  = "rg-terraformstate"
    storage_account_name = "terrastatestorage2134"
    container_name       = "terraformdemo"
    key                  = "dev.terraform.tfstate"
  }
}

#configure azurerm provider
provider "azurerm" {
  version = "1.38"
}

#create resource group
resource "azurerm_resource_group" "rg" {
    name     = "rg-remotestatedemo"
    location = "westus2"
}