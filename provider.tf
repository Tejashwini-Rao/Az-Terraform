
terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
  subscription_id = "8eb485d8-d144-4571-9bd5-df8df6c7d889"
}
