# App service 
variable "as_name" {
  type        = string
  description = "Name of the App service."
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource Group."
}

variable "location" {
  type        = string
  description = "The Azure location where all resources should be created"
}

# Tags
variable "tags" {
  type        = map
  description = "Set this to the mapping of tags to assign to the resource."
}

variable "app_service_plan_id" {
  type        = string
  description = "Name of the Resource Group."
}