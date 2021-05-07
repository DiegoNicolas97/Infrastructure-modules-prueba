terraform {

  backend "azurerm" {}

}

resource "azurerm_app_service" "container" {

  count               = var.image == "" ? 0 : 1
  name                = var.app_service_name
  location            = var.location
  resource_group_name = var.resource_group_name
  app_service_plan_id = var.service_plan_id

  site_config {

    linux_fx_version = var.image
    always_on        = "true"

  }

  app_settings = {
    "WEBSITES_ENABLE_APP_SERVICE_STORAGE" = "false"
    "DOCKER_REGISTRY_SERVER_URL"          = var.docker_container_registry_url
    "DOCKER_ENABLE_CI"                    = "false"
    "DOCKER_REGISTRY_SERVER_USERNAME"     = var.docker_container_registry_username
    "DOCKER_REGISTRY_SERVER_PASSWORD"     = var.docker_container_registry_password
  }
}

resource "azurerm_app_service" "normal" {

  count               = var.image == "" ? 1 : 0
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
