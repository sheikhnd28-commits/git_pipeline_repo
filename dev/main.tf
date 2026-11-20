
module "resource_group" {
  source = "../modules/resource-group"

  resource_group_name = var.resource_group_name
  location            = var.location
  environment         = var.environment
}

module "storage_account" {
  source = "../modules/storage-account"

  storage_account_name = var.storage_account_name
  resource_group_name  = var.resource_group_name
  location             = var.location
  environment          = var.environment
}

module "virtual_network" {
  source = "../modules/virtual-network"

  vnet_name               = var.vnet_name
  resource_group_name     = var.resource_group_name
  location                = var.location
  environment             = var.environment
  address_space           = var.address_space
  subnet_name             = var.subnet_name
  subnet_address_prefixes = var.subnet_address_prefixes
}