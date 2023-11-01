output "this_as_configuration_id" {
  description = "The id of the autoscaling configuration"
  value       = "${module.example.this_as_configuration_id}"
}

output "this_as_group_id" {
  description = "The id of the autoscaling group"
  value       = "${module.example.this_as_group_id}"
}
