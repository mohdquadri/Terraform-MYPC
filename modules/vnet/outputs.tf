output "vnet_id" {
  description = "Virtual network id."
  value       = azurerm_virtual_network.this.id
}

output "subnet_id" {
  description = "Subnet id."
  value       = azurerm_subnet.this.id
}

output "subnet_name" {
  description = "Subnet name."
  value       = azurerm_subnet.this.name
}
