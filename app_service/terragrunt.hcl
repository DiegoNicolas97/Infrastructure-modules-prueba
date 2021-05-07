dependency "app_service_plan" {
  config_path = "../app_service_plan"
}

inputs = {
  service_plan_id = dependency.app_service_plan.outputs.app_service_plan_id
}