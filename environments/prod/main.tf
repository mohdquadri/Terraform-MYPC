resource "azurerm_resource_group" "this" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = "prod"
    managed_by  = "terraform"
  }
}

module "vnet" {
  source              = "../../modules/vnet"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  vnet_name           = var.vnet_name
  address_space       = var.vnet_address_space
  subnet_name         = var.subnet_name
  subnet_prefixes     = var.subnet_prefixes
  tags                = azurerm_resource_group.this.tags
}

module "nsg" {
  source              = "../../modules/nsg"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  nsg_name            = var.nsg_name
  subnet_id           = module.vnet.subnet_id
  tags                = azurerm_resource_group.this.tags

  security_rules = [
    {
      name                       = "Allow-SSH"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = var.allowed_ssh_cidr
      destination_address_prefix = "*"
    }
  ]
}

module "vm" {
  source              = "../../modules/vm"
  resource_group_name = azurerm_resource_group.this.name
  location            = azurerm_resource_group.this.location
  subnet_id           = module.vnet.subnet_id
  vm_name             = var.vm_name
  nic_name            = "${var.vm_name}-nic"
  public_ip_name      = "${var.vm_name}-pip"
  admin_username      = var.admin_username
  admin_password      = var.admin_password
  vm_size             = var.vm_size
  tags                = azurerm_resource_group.this.tags

  depends_on = [module.nsg]
}
