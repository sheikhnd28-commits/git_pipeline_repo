
resource_group_name  = "rg-terraform-dev-001"
storage_account_name = "tfdevpractice20261120"
location             = "Central India"
environment          = "dev"

vnet_name     = "vnet-dev"
address_space = ["10.0.0.0/16"]

subnet_name             = "subnet-dev"
subnet_address_prefixes = ["10.0.1.0/24"]