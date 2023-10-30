output "vpc_id" {
    description = "The ID of the VPC resource"
    value       = try(sbercloud_vpc.this[0].id, "")
}

output "vpc_cidr" {
    description = "The CIDR block of the VPC resource"
    value       = try(sbercloud_vpc.this[0].id, "")
}

output "subnet_cidrs" {
    description = "The CIDR list of the subnet resources to which the VPC resource belongs"
    value       = try(sbercloud_vpc_subnet.this[*].cidr, [])
}

output "subnet_ids" {
    description = "The ID list of the subnet resources to which the VPC resource belongs"
    value       = try(sbercloud_vpc_subnet.this[*].id, [])
}

output "security_group_id" {
    description = "The ID of the security group resource"
    value       = try(sbercloud_networking_secgroup.this[0].id, "")
}

output "security_group_rules" {
    description = "All rules to which the security group resource belongs"
    value       = try(sbercloud_networking_secgroup.this[0].rules, null)
}

output "query_vpc_ids" {
    description = "The ID list of the VPC resources for data-source query by resource name"
    value       = [for v in flatten(data.sbercloud_vpcs.this[*].vpcs): v.id if contains(var.query_vpc_names, v.name)]
}

output "query_subnet_ids" {
    description = "The ID list of the subnet resources for data-source query by resource name"
    value       = [for v in flatten(data.sbercloud_vpc_subnets.this[*].subnets): v.id if contains(var.query_subnet_names, v.name)]
}

output "query_security_group_ids" {
    description = "The ID list of the security group resources for data-source query by resource name"
    value       = [for v in flatten(data.sbercloud_networking_secgroups.this[*].security_groups): v.id if contains(var.query_security_group_names, v.name)]
}
