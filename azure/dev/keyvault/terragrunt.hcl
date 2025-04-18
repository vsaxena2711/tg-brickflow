terraform {
  source = "git::https://github.com/vsaxena2711/tf-brickstack.git//azure-key-vault-module?ref=main"
}

inputs = {
  name                         = "kv-demo01"
  location                     = "East US 2"
  resource_group_name          = "rg-demo-shared"
  sku_name                     = "standard"
  tenant_id                    = "11111111-2222-3333-4444-555555555555"
  enable_rbac_authorization    = true

  enabled_for_deployment            = false
  enabled_for_disk_encryption       = false
  enabled_for_template_deployment   = false

  purge_protection_enabled          = true
  soft_delete_retention_days        = 30
  public_network_access_enabled     = false

  network_acls = {
    bypass         = "AzureServices"
    default_action = "Deny"
    ip_rules       = ["192.168.1.1"]
    virtual_network_subnet_ids = [
      "/subscriptions/xxx/resourceGroups/demo-rg/providers/Microsoft.Network/virtualNetworks/demo-vnet/subnets/demo-subnet"
    ]
  }

  tags = {
    environment = "demo"
    team        = "platform"
  }
}