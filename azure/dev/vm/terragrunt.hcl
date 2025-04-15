terraform {
  source = "git::https://github.com/vsaxena2711/tf-brickstack.git//azure-vm-module?ref=main"
}

inputs = {
  rg_name            = "rg-code-action"
  location           = "East US"
  vnet_name          = "vnet-code"
  vnet_address_space = ["10.0.0.0/16"]
  subnet_name        = "subnet-code"
  subnet_prefixes    = ["10.0.1.0/24"]
  vm_name            = "vm-code"
  vm_size            = "Standard_B1s"
  admin_username     = "azureuser"
  admin_password     = "TerraformDemo123!"
}
