variable "resource_group_name" {
  description = "Name of the resource group."
  type        = string
}

variable "location" {
  description = "Azure region."
  type        = string
}

variable "subnet_id" {
  description = "Subnet ID for the VM NIC."
  type        = string
}

variable "vm_name" {
  description = "Virtual machine name."
  type        = string
}

variable "nic_name" {
  description = "NIC name."
  type        = string
}

variable "public_ip_name" {
  description = "Public IP name."
  type        = string
}

variable "create_public_ip" {
  description = "Whether to create a public IP."
  type        = bool
  default     = true
}

variable "admin_username" {
  description = "VM admin username."
  type        = string
}

variable "admin_password" {
  description = "VM admin password."
  type        = string
  sensitive   = true
}

variable "vm_size" {
  description = "VM size."
  type        = string
  default     = "Standard_B2s"
}

variable "os_disk_type" {
  description = "OS disk SKU."
  type        = string
  default     = "Standard_LRS"
}

variable "image_publisher" {
  description = "Image publisher."
  type        = string
  default     = "Canonical"
}

variable "image_offer" {
  description = "Image offer."
  type        = string
  default     = "0001-com-ubuntu-server-jammy"
}

variable "image_sku" {
  description = "Image SKU."
  type        = string
  default     = "22_04-lts-gen2"
}

variable "image_version" {
  description = "Image version."
  type        = string
  default     = "latest"
}

variable "tags" {
  description = "Tags to apply to resources."
  type        = map(string)
  default     = {}
}
