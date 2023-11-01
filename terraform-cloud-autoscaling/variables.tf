variable "as_config_id" {
  description = "Specifying existing autoscaling configuration ID"
  default     = ""
}

variable "configuration_name" {
  description = "The name of the autoscaling configuration"
  default     = "test"
}

variable "instance_id" {
  description = "The ID of the ECS instance"
  default     = ""
}

variable "key_name" {
  description = "The KeyPair of the ECS instance"
  default     = ""
}

variable "group_name" {
  description = "The name of the autoscaling group"
}

variable "availability_zones" {
  description = "The list of availability zones in which to create the instances in the autoscaling group"
  type        = list(string)
  default     = ["ru-moscow-1a"]
}

variable "desire_instance_number" {
  description = "The expected number of ECS instances"
  default     = "0"
}

variable "min_instance_number" {
  description = "The minimum number of ECS instances"
  default     = "0"
}

variable "max_instance_number" {
  description = "The maximum number of ECS instances"
  default     = "1"
}

variable "cool_down_time" {
  description = "The cooling duration(in seconds)"
  default     = "300"
}

variable "lb_listener_id" {
  description = "The ELB listener IDs, supporting up to three listeners, which are separated using a comma(,)"
  default     = ""
}

variable "network_id" {
  description = "The subnet Network ID"
}

variable "security_group" {
  description = "The security group ID to associate with the autoscaling group"
}

variable "vpc_id" {
  description = "The VPC ID"
}

variable "health_periodic_audit_method" {
  description = "The health check method for instances in the AS group. Valid options are ELB_AUDIT and NOVA_AUDIT"
  default     = "NOVA_AUDIT"
}

variable "health_periodic_audit_time" {
  description = "The health check period for instances. Valid options are 5 minutes, 15 minutes, 60 minutes, and 180 minutes"
  default     = "5"
}

variable "instance_terminate_policy" {
  description = "The instance removal policy. Valid options are OLD_CONFIG_OLD_INSTNACE, OLD_CONFIG_NEW_INSTANCE, OLD_INSTANCE, and NEW_INSTANCE"
  default     = "OLD_CONFIG_OLD_INSTANCE"
}

variable "delete_publicip" {
  description = "Whether to delete the elastic IP address bound to the instances of the autoscaling group"
  default     = "false"
}
