terraform {

  backend "azurerm" {}

}

resource "azurerm_app_service" "asterraform" {

  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.service_plan_id


  site_config {

    linux_fx_version = "DOCKER|(golang:latest)"
    always_on        = "true"

  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    "DOCKER_ENABLE_CI"                    = "false"
  }

}
