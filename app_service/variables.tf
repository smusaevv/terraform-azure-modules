# App service 
variable "as_name" {
  type        = string
  description = "Name of the App service."
  # default     = "lab-app-service"
}

variable "asp_name" {
  type        = string
  description = "Name of the App service plan."
  default     = "lab-app-service-plan"
}

variable "rg_name" {
  type        = string
  description = "Name of the Resource Group."
  default     = "lab-test-rg"
}

variable "location" {
  type        = string
  description = "The Azure location where all resources should be created"
  # default     = "centralus"
}

# Tags
variable "tags" {
  type        = map
  description = "Set this to the mapping of tags to assign to the resource."
  default = {
    Environment = "Innovation Lab"
    Dept = "Engineering"
  }
}

variable "as_depends_on" {
  type    = any
  default = []
}

variable "app_service_plan_id" {
  type        = string
  description = "Name of the Resource Group."
}