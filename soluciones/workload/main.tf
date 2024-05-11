terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~>3.0"
    }
  }
  # backend "azurerm" {
  #     resource_group_name  = "rg1eperez-lab01"
  #     storage_account_name = "sta1eperez" 
  #     container_name       = "tfstateeperez"
  #     key                  = "terraform.tfstate"
  # }

}

provider "azurerm" {
  features {}
}


module "weekly_exercise" {
  source = "github.com/stemdo-labs/terraform-exercises-EperezStemdo-1/soluciones/modulo-weekly-exercise"

  resource_group_name = var.resource_group_name
  location = var.location
  namenetgroup = var.namenetgroup
  vnet_name = var.vnet_name
  vnet_address_space = var.vnet_address_space
  subnet_name = var.subnet_name
  address_prefixes = var.address_prefixes
  name_network_interface = var.name_network_interface
  name_ip_configuration = var.name_ip_configuration
  private_ip_address_allocation = var.private_ip_address_allocation
  vm_name = var.vm_name
  admin_username= var.admin_username
  size = var.size
  caching = var.caching
  storage_account_type = var.storage_account_type

}