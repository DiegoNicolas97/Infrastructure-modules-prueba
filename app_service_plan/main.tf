terraform {
  backend "azurerm" {}
}
resource "azurerm_app_service_plan" "asp" {
  name                = var.app_service_plan_name
  location            = var.location
  resource_group_name = var.resource_group_name
  kind                = "Linux"
  reserved            = true
  sku {
    tier = var.sku_tier
    size = var.sku_size
  }
}
