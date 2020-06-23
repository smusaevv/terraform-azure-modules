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

variable "app_service_plan_id" {
  type        = string
  description = "Name of the Resource Group."

}

variable "https_only" {
  type        = bool
  description = "Can the App Service only be accessed via HTTPS? Defaults to false."
}

# Site config
variable "site_config" {
  type        = map
  description = "A site_config block as defined below."
}

# Connection String

variable "connection_string" {
  type        = map
  description = "Specify the name, type and value of the Connection String."
}

# Tags
variable "tags" {
  type        = map
  description = "Set this to the mapping of tags to assign to the resource."
}

