output "bandwidth_charge_mode" {
  description = "Indicates whether the billing is based on traffic, bandwidth, or 95th percentile bandwidth (enhanced)."
  value       = try(sbercloud_vpc_bandwidth.this[0].charge_mode, "")
}

output "bandwidth_enterprise_project_id" {
  description = "The enterprise project id of the Shared Bandwidth."
  value       = try(sbercloud_vpc_bandwidth.this[0].enterprise_project_id, "")
}

output "bandwidth_id" {
  description = "ID of the Shared Bandwidth."
  value       = try(sbercloud_vpc_bandwidth.this[0].id, "")
}

output "bandwidth_name" {
  description = "The name of the Shared Bandwidth."
  value       = try(sbercloud_vpc_bandwidth.this[0].name, "")
}

output "bandwidth_region" {
  description = "The region in which to create the Shared Bandwidth."
  value       = try(sbercloud_vpc_bandwidth.this[0].region, "")
}

output "bandwidth_share_type" {
  description = "Indicates whether the bandwidth is shared or dedicated."
  value       = try(sbercloud_vpc_bandwidth.this[0].share_type, "")
}

output "bandwidth_size" {
  description = "The size of the Shared Bandwidth."
  value       = try(sbercloud_vpc_bandwidth.this[0].size, "")
}

output "eip_address" {
  description = "The IP address of the eip."
  value       = try(sbercloud_vpc_eip.this[0].address, "")
}

output "eip_charging_mode" {
  description = "Specifies the charging mode of the elastic IP."
  value       = try(sbercloud_vpc_eip.this[0].charging_mode, "")
}

output "eip_enterprise_project_id" {
  description = "The enterprise project id of the elastic IP."
  value       = try(sbercloud_vpc_eip.this[0].enterprise_project_id, "")
}

output "eip_id" {
  description = "The shared bandwidth id."
  value       = try(sbercloud_vpc_eip.this[0].id, "")
}

output "eip_ipv6_address" {
  description = "The IPv6 address of the eip."
  value       = try(sbercloud_vpc_eip.this[0].ipv6_address, "")
}

output "eip_port_id" {
  description = "The port id which this eip will associate with."
  value       = try(sbercloud_vpc_eip.this[0].port_id, "")
}

output "eip_region" {
  description = "The region in which to create the eip resource."
  value       = try(sbercloud_vpc_eip.this[0].region, "")
}