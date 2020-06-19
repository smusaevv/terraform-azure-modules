# Resource Group
variable "rg_name" {
  type        = string
  description = "Name of the Resource Group."
}

variable "location" {
  type        = string
  description = "The Azure location where all resources should be created"
}

# App service plan
variable "asp_name" {
  type        = string
  description = "Name of the App service plan."
}

variable "kind" {
  type        = string
  description = "The App kind - such as functionapp,linux,container"
}

variable "reserved" {
  type        = bool
  description = "When creating a Linux App Service Plan, the reserved field must be set to true, and when creating a Windows/app App Service Plan the reserved field must be set to false."
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

# Tags
variable "tags" {
  type        = map
  description = "Set this to the mapping of tags to assign to the resource."
}

variable "asp_depends_on" {
  type    = any
  default = []
}
