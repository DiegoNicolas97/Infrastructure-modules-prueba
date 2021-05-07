variable "app_service_name" {
  description = "Name of the appservice"
}

variable "location" {
  description = "Location of the appservice"
}

variable "resource_group_name" {
  description = "Resource Group Name for the appservice"
}

variable "service_plan_id" {
  description = "Id of the app service plan"
}

variable "image" {
  description = " Imagen de docker"
}

variable "docker_container_registry_url" {
  description = "URL of the container registry"
}

variable "docker_container_registry_username" {
  description = "Username of the container registry"
}

variable "docker_container_registry_password" {
  description = "Password of the container registry"
}
