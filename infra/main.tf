# create azure resource group
resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}


module "storage_account" {
  source              = "./modules/storageaccount"
  storage_account_name = "storageaccountgit"
  resource_group_name = azurerm_resource_group.rg.name
  
}