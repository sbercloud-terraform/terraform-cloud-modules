resource "sbercloud_dws_cluster" "this" {
  count = var.create ? 1 : 0

  region                = var.region
  name                  = var.name
  node_type             = var.node_type
  number_of_node        = var.number_of_node
  user_name             = var.user_name
  user_pwd              = var.user_pwd
  vpc_id                = var.vpc_id
  network_id            = var.network_id
  security_group_id     = var.security_group_id
  enterprise_project_id = var.enterprise_project_id
  availability_zone     = var.availability_zone
  port                  = var.port
  number_of_cn          = var.number_of_cn
  tags                  = var.tags

  dynamic "public_ip" {
    for_each = var.public_ip != null ? var.public_ip : []
    content {
      eip_id           = lookup(public_ip.value, "eip_id", null)
      public_bind_type = lookup(public_ip.value, "public_bind_type", null)
    }
  }

}