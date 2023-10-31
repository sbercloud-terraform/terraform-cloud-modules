output "volume_id" {
  description = "The ID of the first volume"
  value       = try(sbercloud_evs_volume.this[0].id, "")
}

output "volume_ids" {
  description = "The ID list of all EVS volume resources"
  value       = sbercloud_evs_volume.this[*].id
}

output "volume_wwns" {
  description = "The unique identifier list for all EVS volume resources mounting"
  value       = sbercloud_evs_volume.this[*].wwn
}
