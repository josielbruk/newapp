terraform {
  required_version = ">= 1.4.2"
  required_providers {
    azurerm = "= 3.69.0"
    random  = "~> 3.5.1"
  }
}

provider "azurerm" {

  features {}
}