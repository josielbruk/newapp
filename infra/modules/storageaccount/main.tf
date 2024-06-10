resource "azurerm_storage_account" "sa" {
    name                     = var.storage_account_name
    resource_group_name      = var.resource_group_name
    location                 = var.storage_account_location
    account_tier             = "Standard"
    account_replication_type = "LRS"
    tags = {
        environment = "dev"
    }
  
}