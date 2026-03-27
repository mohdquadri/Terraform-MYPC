variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "nsg_name" {
  description = "Name of the NSG."
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID to associate NSG with."
  type        = string
}

variable "security_rules" {
  description = "List of NSG rules."
  type = list(object({
    name                       = string
    priority                   = number
    direction                  = string
    access                     = string
    protocol                   = string
    source_port_range          = string
    destination_port_range     = string
    source_address_prefix      = string
    destination_address_prefix = string
  }))
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {}
}
