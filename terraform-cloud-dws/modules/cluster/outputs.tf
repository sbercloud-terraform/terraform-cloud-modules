output "id" {
  description = "Specifies a resource ID in UUID format."
  value       = try(sbercloud_dws_cluster.this[0].id, "")
}

output "availability_zone" {
  description = "AZ in a cluster."
  value       = try(sbercloud_dws_cluster.this[0].availability_zone, "")
}

output "dss_pool_id" {
  description = "Cluster dss pool id."
  value       = try(sbercloud_dws_cluster.this[0].dss_pool_id, "")
}

output "endpoints" {
  description = "Cluster endpoints."
  value       = try(sbercloud_dws_cluster.this[0].endpoints, "")
}

output "enterprise_project_id" {
  description = "The enterprise project id of the DWS cluster."
  value       = try(sbercloud_dws_cluster.this[0].enterprise_project_id, "")
}

output "kms_key_id" {
  description = "KMS key id used by the cluster."
  value       = try(sbercloud_dws_cluster.this[0].kms_key_id, "")
}

output "name" {
  description = "Cluster name."
  value       = try(sbercloud_dws_cluster.this[0].name, "")
}

output "network_id" {
  description = "Network ID, which is used for configuring cluster network."
  value       = try(sbercloud_dws_cluster.this[0].network_id, "")
}

output "node_type" {
  description = "Node type."
  value       = try(sbercloud_dws_cluster.this[0].node_type, "")
}

output "number_of_node" {
  description = "Number of nodes in a cluster."
  value       = try(sbercloud_dws_cluster.this[0].number_of_node, "")
}

output "port" {
  description = "Service port of a cluster."
  value       = try(sbercloud_dws_cluster.this[0].port, "")
}

output "public_endpoints" {
  description = "Cluster public endpoints."
  value       = try(sbercloud_dws_cluster.this[0].public_endpoints, "")
}

output "region" {
  description = "The region in which to create the cluster resource."
  value       = try(sbercloud_dws_cluster.this[0].region, "")
}

output "security_group_id" {
  description = "ID of a security group."
  value       = try(sbercloud_dws_cluster.this[0].security_group_id, "")
}

output "user_name" {
  description = "Administrator username for logging in to a data warehouse cluster."
  value       = try(sbercloud_dws_cluster.this[0].user_name, "")
}

output "user_pwd" {
  description = "Administrator password for logging in to a data warehouse cluster."
  sensitive   = true
  value       = try(sbercloud_dws_cluster.this[0].user_pwd, "")
}

output "version" {
  description = "Cluster version."
  value       = try(sbercloud_dws_cluster.this[0].version, "")
}

output "vpc_id" {
  description = "VPC ID, which is used for configuring cluster network."
  value       = try(sbercloud_dws_cluster.this[0].vpc_id, "")
}