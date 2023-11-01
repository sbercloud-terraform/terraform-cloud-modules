output "this_dns_zone_id" {
  description = "The ID of the DNS zone"
  value       = var.zone_id=="" ? sbercloud_dns_zone.this[0].id : var.zone_id
}

output "this_dns_recordset_ids" {
  description = "List of IDs of the DNS recordsets"
  value       = join(",", sbercloud_dns_recordset.this.*.id)
}

