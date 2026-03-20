output "eip_id" {
  description = "The ID of the elastic IP"

  value = module.eip_publicip.eip_id
}

output "eip_ipv4_address" {
  description = "The IPv4 address of the elastic IP"

  value = module.eip_publicip.eip_ipv4_address
}

output "eip_associate_id" {
  description = "The associate ID of the elastic IP"

  value = module.eip_publicip.eip_associate_id
}

output "eip_associate_instance_id" {
  description = "The instance ID to associate with the elastic IP"

  value = module.ecs_instance.instance_id
}