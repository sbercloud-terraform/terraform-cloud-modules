output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_enterprise_project.this[0].id, "")
}