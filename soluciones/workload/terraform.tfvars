
# vnet
resource_group_name = "rg1eperez-lab01"
vnet_name = "vnetepereztfexercise"
vnet_address_space = ["10.0.0.0/16"]
location = "West Europe"

#subnet
subnet_name = "subneteperez"

#virtual_network_name = "vnetepereztfexercise07"
address_prefixes     = ["10.0.1.0/24"]

#security group
namenetgroup = "epereznetworksecuritygroup"

#network interface
network_interfaces = {
  nic1 = {
    name                       = "niceperez1"
    location                   = "West Europe"
    resource_group_name        = "rg1eperez-lab01"
    private_ip_address_allocation = "Dynamic"
  }
  nic2 = {
    name                       = "niceperez2"
    location                   = "West Europe"
    resource_group_name        = "rg1eperez-lab01"
    private_ip_address_allocation = "Dynamic"

  }

}

#vm

 virtual_machines = {
  
    vm1 = {
      vm_name            = "vmeperez1"
      resource_group_name = "rg1eperez-lab01"
      location           = "West Europe"
      size               = "Standard_F2"
      admin_username     = "eperez"
      admin_password = "Eperez1234!"
      caching            = "ReadWrite"
      storage_account_type = "Standard_LRS"
     network_interface_keys = ["nic1"]
  }
  
    vm2 = {
      vm_name            = "vmeperez2"
      resource_group_name = "rg1eperez-lab01"
      location           = "West Europe"
      size               = "Standard_F2"
      admin_username     = "eperez"
      admin_password = "Eperez1234!"
      caching            = "ReadWrite"
      storage_account_type = "Standard_LRS"
    network_interface_keys = ["nic2"]

    }
  
}

#lb
lb_backend_address_pool_name = "backpooleperez"
lb_name = "lbeperez"
lb_front_name = "fronteperez"


