resource "sbercloud_evs_volume" "this" {
  count = var.is_volume_create ? (var.volume_count != null ? var.volume_count : 1) : 0

  name                  = var.name_suffix != "" ? format("%s-%s-%d", var.volume_name, var.name_suffix, count.index) : format("%s-%d", var.volume_name, count.index)
  description           = var.volume_description
  enterprise_project_id = var.enterprise_project_id
  availability_zone     = var.availability_zone
  volume_type           = var.volume_type
  size                  = var.volume_size
  image_id              = var.image_id
  backup_id             = var.backup_id
  snapshot_id           = var.snapshot_id
  multiattach           = var.is_multiattach
  kms_id                = var.encryption_kms_id
  device_type           = var.device_type
  cascade               = var.is_cascade_delete

  charging_mode = var.charging_mode
  period_unit   = var.period_unit
  period        = var.period
  auto_renew    = var.is_auto_renew

  tags   = merge(
    { "Name" = var.name_suffix != "" ? format("%s-%s", var.volume_name, var.name_suffix) : var.volume_name },
  var.volume_tags)
}
