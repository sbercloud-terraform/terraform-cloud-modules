output "instance_ids" {
  description = "The ID list of the ECS instances"

  value = sbercloud_compute_instance.this[*].id
}

// If you only create one instance, you can refer to the following parameters.
output "instance_id" {
  description = "The ID of the first ECS instance"

  value = try(sbercloud_compute_instance.this[0].id, "")
}

output "instance_name" {
  description = "The name of the first ECS instance"

  value = try(sbercloud_compute_instance.this[0].name, "")
}

output "instance_status" {
  description = "The status of the first ECS instance"

  value = try(sbercloud_compute_instance.this[0].status, "")
}

output "instance_public_ip" {
  description = "The public IP of the first ECS instance"

  value = try(sbercloud_compute_instance.this[0].public_ip, "")
}

output "instance_access_ipv4" {
  description = "The fixed IPv4 address or the floating IP of the first ECS instance"

  value = try(sbercloud_compute_instance.this[0].access_ip_v4, "")
}

output "instance_access_ipv6" {
  description = "The fixed IPv6 address of the first ECS instance"

  value = try(sbercloud_compute_instance.this[0].access_ip_v6, "")
}

output "instance_network" {
  description = "The network object of the first ECS instance"

  value = try(sbercloud_compute_instance.this[0].network, "")
}
