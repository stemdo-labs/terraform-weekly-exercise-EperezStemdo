

module "weekly_exercise" {
  source = "github.com/stemdo-labs/terraform-exercises-EperezStemdo-1/soluciones/modulo-weekly-exercise"

  resource_group_name = var.resource_group_name
  vnet_name = var.vnet_name
  vnet_address_space = var.vnet_address_space
  location = var.location
  subnet_name = var.subnet_name
  address_prefixes = var.address_prefixes
  namenetgroup = var.namenetgroup
  network_interfaces = var.network_interfaces
  virtual_machines = var.virtual_machines
  lb_backend_address_pool_name = var.lb_backend_address_pool_name
  lb_front_name = var.lb_front_name
  lb_name = var.lb_name
  container_access_type = var.container_access_type
  container_name = var.container_name
}