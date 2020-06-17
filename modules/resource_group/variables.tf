# Resource Group
variable "rg_name" {
  type        = string
  description = "Name of the Resource Group."
  default     = "lab-rg"
}

variable "location" {
  type        = string
  description = "The Azure location where all resources should be created"
  default     = "centralus"
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