output "ecs_system_image_id" {
  description = "The ID of the image"
  value       = try(sbercloud_ims_ecs_system_image.this[0].id, "")
}

output "ecs_system_image_status" {
  description = "The status of the image"
  value       = try(sbercloud_ims_ecs_system_image.this[0].status, "")
}

output "evs_system_image_id" {
  description = "The ID of the image"
  value       = try(sbercloud_ims_evs_system_image.this[0].id, "")
}

output "evs_system_image_status" {
  description = "The status of the image"
  value       = try(sbercloud_ims_evs_system_image.this[0].status, "")
}