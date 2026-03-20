locals {
  bandwidth_name = var.create_bandwidth ? sbercloud_vpc_bandwidth.this[0].name : var.bandwidth_name
  bandwidth_id   = var.create_bandwidth ? sbercloud_vpc_bandwidth.this[0].id : var.bandwidth_id
}

resource "sbercloud_vpc_bandwidth" "this" {
  count  = var.create_bandwidth ? 1 : 0
  region = var.region
  name   = var.bandwidth_name
  size   = var.bandwidth_size
}

resource "sbercloud_vpc_eip" "this" {
  count = var.create_eip ? 1 : 0

  region = var.region

  publicip {
    type       = var.publicip_type
    ip_address = var.publicip_ip_address
    port_id    = var.publicip_port_id
  }

  bandwidth {
    share_type  = var.bandwidth_share_type
    name        = local.bandwidth_name
    size        = var.bandwidth_size
    id          = local.bandwidth_name != null ? null : local.bandwidth_id
    charge_mode = var.bandwidth_charge_mode
  }

  tags                  = var.tags
  enterprise_project_id = var.enterprise_project_id
  charging_mode         = var.charging_mode
  period_unit           = var.period_unit
  period                = var.period
  auto_renew            = var.auto_renew
}