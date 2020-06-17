#Define variables
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
