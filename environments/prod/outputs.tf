output "resource_group_name" {
  value = azurerm_resource_group.this.name
}

output "vnet_id" {
  value = module.vnet.vnet_id
}

output "subnet_id" {
  value = module.vnet.subnet_id
}

output "nsg_id" {
  value = module.nsg.nsg_id
}

output "vm_id" {
  value = module.vm.vm_id
}

output "vm_private_ip" {
  value = module.vm.private_ip_address
}

output "vm_public_ip" {
  value = module.vm.public_ip_address
}
