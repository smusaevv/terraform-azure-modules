# App service plan
variable "asp" {
  type        = string
  description = "Name of the App service plan."
  default     = "lab-app-service-plan"
}

variable "kind" {
  type        = string
  description = "The App kind - such as functionapp,linux,container"
  default     = "Linux"
}

variable "reserved" {
  type        = bool
  description = "When creating a Linux App Service Plan, the reserved field must be set to true, and when creating a Windows/app App Service Plan the reserved field must be set to false."
  default     = true
}

variable "tier" {
  type        = string
  description = "Specify the plan's pricing tier."
  default     = "Standard"
}

variable "size" {
  type        = string
  description = "Specify the plan's instance size."
  default     = "S1"
}
