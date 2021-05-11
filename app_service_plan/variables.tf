variable "app_service_plan_name" {
  description = "Name of the app service plan"
}

variable "location" {
  description = "Location of the app service plan"
}

variable "resource_group_name" {
  description = "Resource Group Name for the app service plan"
}

variable "sku_tier" {
  default = "Free"
}

variable "sku_size" {
  default = "F1"
}
