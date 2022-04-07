terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}

provider "azurerm" {
  subscription_id = var.SUBSCRIPTION_ID
  features {}
}

module "resource_group" {
  source        = "./Modules/Rg"
  rg_name       = var.rg_name
  location_name = var.location_name

}

module "vnet" {
  source        = "./Modules/Vnet"
  rg_name       = var.rg_name
  location_name = var.location_name
  nsg_name      = var.nsg_name
}