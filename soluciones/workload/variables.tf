
# # resource group name

variable "resource_group_name" {
  type = string
  description = "The name of the resource group"
}

variable "location" {
  type = string
  default = "West Europe"
}

#security group


  variable "namenetgroup" {
    type = string
  }


# vnet

variable "vnet_name" {
  description = "Name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "Address space of the virtual network"
  type        = list(string)
}


#subnet

variable "subnet_name" {
  type = string
  description = "The name of the subnet"
}

variable "address_prefixes" {
  type = list(string)
  description = "The address prefixes to use for the subnet."
}

#interfaz de red

variable "network_interfaces" {
  type = map(object({
    name                         = string
    location                     = string
    resource_group_name          = string
    private_ip_address_allocation = string
  }))
}

#MV

variable "virtual_machines" {
  type = map(object({
    vm_name            = string
    resource_group_name = string
    location           = string
    size               = string
    admin_username     = string
    admin_password = string
    caching            = string
    storage_account_type = string 
    network_interface_keys = list(string)
  }))
}

#lb

variable "lb_name" {
  type = string
}
variable "lb_backend_address_pool_name" {
  type = string
}

variable "lb_front_name" {
  type = string
}





