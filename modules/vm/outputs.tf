output "vm_id" {
  description = "VM id."
  value       = azurerm_linux_virtual_machine.this.id
}

output "private_ip_address" {
  description = "VM private IP."
  value       = azurerm_network_interface.this.private_ip_address
}

output "public_ip_address" {
  description = "VM public IP if enabled."
  value       = var.create_public_ip ? azurerm_public_ip.this[0].ip_address : null
}
