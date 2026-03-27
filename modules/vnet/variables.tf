variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "vnet_name" {
  description = "Name of the virtual network."
  type        = string
}

variable "address_space" {
  description = "VNet CIDR blocks."
  type        = list(string)
}

variable "subnet_name" {
  description = "Subnet name."
  type        = string
}

variable "subnet_prefixes" {
  description = "Subnet CIDR blocks."
  type        = list(string)
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {}
}
