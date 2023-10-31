output "instance_ids" {
    value = module.ecs_service.instance_ids
}

output "instance_id" {
    value = module.ecs_service.instance_id
}

output "instance_name" {
    value = module.ecs_service.instance_name
}

output "instance_status" {
    value = module.ecs_service.instance_status
}

output "instance_public_ip" {
    value = module.ecs_service.instance_public_ip
}

output "instance_access_ipv4" {
    value = module.ecs_service.instance_public_ip
}

output "instance_access_ipv6" {
    value = module.ecs_service.instance_public_ip
}

output "instance_network" {
    value = module.ecs_service.instance_public_ip
}
