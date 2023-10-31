output "this_kms" {
  description = "The ID of the KMS"
  value       = sbercloud_kms_key.this.id
}
