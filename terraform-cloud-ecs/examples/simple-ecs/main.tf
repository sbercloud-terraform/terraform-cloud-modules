resource "random_password" "this" {
  count = var.admin_password == "" ? 1 : 0

  length           = 16
  special          = true
  min_numeric      = 1
  min_special      = 1
  min_lower        = 1
  min_upper        = 1
  override_special = "!#"
}

module "vpc_service" {
  source = "./"

  vpc_name              = var.vpc_name
  vpc_cidr_block        = var.vpc_cidr_block
  subnets_configuration = var.subnets_configuration

  security_group_name                = var.security_group_name
  security_group_rules_configuration = var.security_group_rules_configuration
}

module "ecs_service" {
  source = "../.."

  subnet_id          = try(module.vpc_service.subnet_ids[0], "")
  security_group_ids = [module.vpc_service.security_group_id]
  availability_zone  = var.availability_zone

  instance_name               = var.instance_name
  instance_flavor_id          = var.instance_flavor_id
  instance_flavor_performance = var.instance_flavor_performance
  instance_flavor_cpu         = var.instance_flavor_cpu
  instance_flavor_memory      = var.instance_flavor_memory
  instance_image_id           = var.instance_image_id
  instance_image_name         = var.instance_image_name
  system_disk_type            = var.system_disk_type
  system_disk_size            = var.system_disk_size
  data_disks_configuration    = var.data_disks_configuration
  admin_password              = var.admin_password != "" ? var.admin_password : try(random_password.this[0].result, "")
}
