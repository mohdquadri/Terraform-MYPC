variable "subscription_id" {
  description = "Azure subscription ID."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
  default     = "eastus"
}

variable "resource_group_name" {
  description = "Resource group name."
  type        = string
  default     = "rg-dev-eastus-01"
}

variable "vnet_name" {
  description = "VNet name."
  type        = string
  default     = "vnet-dev-eastus-01"
}

variable "vnet_address_space" {
  description = "VNet CIDR blocks."
  type        = list(string)
  default     = ["10.10.0.0/16"]
}

variable "subnet_name" {
  description = "Subnet name."
  type        = string
  default     = "snet-app-dev-01"
}

variable "subnet_prefixes" {
  description = "Subnet CIDR blocks."
  type        = list(string)
  default     = ["10.10.1.0/24"]
}

variable "nsg_name" {
  description = "NSG name."
  type        = string
  default     = "nsg-dev-eastus-01"
}

variable "allowed_ssh_cidr" {
  description = "CIDR allowed for SSH to VM."
  type        = string
  default     = "0.0.0.0/0"
}

variable "vm_name" {
  description = "VM name."
  type        = string
  default     = "vm-dev-eastus-01"
}

variable "vm_size" {
  description = "VM SKU."
  type        = string
  default     = "Standard_B2s"
}

variable "admin_username" {
  description = "VM admin username."
  type        = string
  default     = "azureuser"
}

variable "admin_password" {
  description = "VM admin password."
  type        = string
  sensitive   = true
}
