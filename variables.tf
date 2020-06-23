# Resource Group
variable "rg_name" {
  type        = string
  description = "Name of the Resource Group."
  default     = "lab-test-rg"
}

variable "location" {
  type        = string
  description = "The Azure location where all resources should be created"
  default     = "centralus"
}

# App service plan
variable "asp_name" {
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

variable "sku" {
  type        = map
  description = "Specify the plan's pricing tier, size and number of workers associated with this App Service Plan."
  default     = {
    capacity = null
    tier     = "Standard"
    size     = "S1"
  }
}

# App service 
variable "as_name" {
  type        = string
  description = "Name of the App service."
  default     = "lab-app-service"
}

variable "https_only" {
  type        = bool
  description = "Can the App Service only be accessed via HTTPS? Defaults to false."
  default     = true
}

variable "site_config" {
  type        = map
  description = "A site_config block as defined below."
  default     = {
    always_on = true
    dotnet_framework_version = "V4.0"
  }
}

variable "connection_string" {
  type        = map
  description = "Specify the name, type and value of the Connection String."
  default     = {
    name  = "Database"
    type  = "SQLServer"
    value = "Server=some-server.mydomain.com;Integrated Security=SSPI"
  }
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