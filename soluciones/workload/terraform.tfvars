
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


#tfstate
# container_name = "tfstateeperez"
# container_access_type = "private"


#Interfaz de red

name_network_interface = "networinterfazperez"
name_ip_configuration = "ipconfeperez"
private_ip_address_allocation = "Dynamic"

#VM

admin_username = "eperez"
vm_name = "vmeperez"
size = "Standard_F2"
caching = "ReadWrite"
storage_account_type = "Standard_LRS"