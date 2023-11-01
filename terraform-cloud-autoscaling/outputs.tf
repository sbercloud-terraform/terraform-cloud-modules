output "this_as_configuration_id" {
  description = "The id of the autoscaling configuration"
  value       = "${var.as_config_id=="" ? join("",sbercloud_as_configuration.this.*.id) : var.as_config_id}"
} 

output "this_as_group_id" {
  description = "The id of the autoscaling group"
  value       = "${sbercloud_as_group.this.id}"
} 
