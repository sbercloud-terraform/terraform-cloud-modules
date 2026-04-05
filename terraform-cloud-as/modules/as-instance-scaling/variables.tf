######################################################################
# Configurations of AS configuration
######################################################################

variable "is_configuration_create" {
  type        = bool
  description = "Controls whether the AS configuration should be created"
  default     = true
  nullable    = false
}

variable "configuration_name" {
  type        = string
  description = "The AS configuration name"
  default     = null
}

variable "configuration_instance_id" {
  type        = string
  description = "The ECS instance ID when using its specification as the template to create AS configurations"
  default     = null
}

variable "configuration_flavor" {
  type        = string
  description = "The ECS flavor name"
  default     = null
}

variable "configuration_image" {
  type        = string
  description = "The ECS image ID"
  default     = null
}

variable "configuration_key_name" {
  type        = string
  description = "The name of the SSH key pair used to log in to the instance"
  default     = null
}

variable "configuration_security_group_ids" {
  type        = list(string)
  description = "An array of one or more security group IDs"
  default     = null
}

variable "configuration_charging_mode" {
  type        = string
  description = "The billing mode for an ECS"
  default     = "postPaid"
}

variable "configuration_flavor_priority_policy" {
  type        = string
  description = "The priority policy used when there are multiple flavors and instances to be created using an AS configuration"
  default     = null
}

variable "configuration_ecs_group_id" {
  type        = string
  description = "The ECS group ID"
  default     = null
}

variable "configuration_disk" {
  type = list(object({
    size                 = optional(number)
    volume_type          = optional(string)
    disk_type            = optional(string)
    kms_id               = optional(string)
    iops                 = optional(number)
    throughput           = optional(number)
    dedicated_storage_id = optional(string)
    data_disk_image_id   = optional(string)
    snapshot_id          = optional(string)
  }))
  description = "The disk group information"
  default     = null
}

variable "configuration_personality" {
  type = list(object({
    path    = optional(string)
    content = optional(string)
  }))
  description = "The customize personality of an instance by defining one or more files and their contents"
  default     = null
}

variable "configuration_public_ip" {
  type = list(object({
    eip = list(object({
      ip_type   = optional(string)
      bandwidth = list(object({
        share_type    = optional(string)
        charging_mode = optional(string)
        size          = optional(number)
        id            = optional(string)
      }))
    }))
  }))
  description = "The EIP of the ECS instance"
  default     = null
}

variable "configuration_tenancy" {
  type        = string
  description = "Whether to create ECS instances on DeHs"
  default     = null
}

variable "configuration_dedicated_host_id" {
  type        = string
  description = "The ID of the DEH"
  default     = null
}

variable "configuration_user_data" {
  type        = string
  description = "The user data to be injected during the ECS creation process"
  default     = null
}

variable "configuration_admin_pass" {
  type        = string
  description = "The initial login password of the administrator account for logging in to an ECS using password authentication"
  default     = null
  sensitive   = true
}

variable "configuration_metadata" {
  type        = map(string)
  description = "The key/value pairs to make available from within the instance"
  default     = null
}

######################################################################
# Configurations of AS group
######################################################################

variable "is_group_create" {
  type        = bool
  description = "Controls whether the AS group should be created"
  default     = true
  nullable    = false
}

variable "group_name" {
  type        = string
  description = "The name of the scaling group"
  default     = null
}

variable "group_configuration_id" {
  type        = string
  description = "The configuration ID which defines configurations of instances in the AS group"
  default     = null
}

variable "group_desire_instance_number" {
  type        = number
  description = "The expected number of instances"
  default     = null
}

variable "group_min_instance_number" {
  type        = number
  description = "The minimum number of instances"
  default     = null
}

variable "group_max_instance_number" {
  type        = number
  description = "The maximum number of instances"
  default     = null
}

variable "group_cool_down_time" {
  type        = number
  description = "The cooling duration (in seconds)"
  default     = 300
}

variable "group_lbaas_listeners" {
  type = list(object({
    pool_id          = optional(string)
    protocol_port    = optional(number)
    weight           = optional(number)
    protocol_version = optional(string)
  }))
  description = "An array of one or more enhanced load balancer"
  default     = null
}

variable "group_vpc_id" {
  type        = string
  description = "The VPC ID"
  default     = null
}

variable "group_networks" {
  type = list(object({
    id                = optional(string)
    ipv6_enable       = optional(bool)
    ipv6_bandwidth_id = optional(string)
    source_dest_check = optional(bool)
  }))
  description = "An array of one or more network IDs"
  default     = null
}

variable "group_security_groups" {
  type = list(object({
    id = optional(string)
  }))
  description = "An array of one or more security group IDs to associate with the group"
  default     = null
}

variable "group_availability_zones" {
  type        = list(string)
  description = "The availability zones in which to create the instances in the autoscaling group"
  default     = null
}

variable "group_multi_az_scaling_policy" {
  type        = string
  description = "The priority policy used to select target AZs when adjusting the number of instances in an AS group"
  default     = null
}

variable "group_health_periodic_audit_method" {
  type        = string
  description = "The health check method for instances in the AS group"
  default     = "NOVA_AUDIT"
}

variable "group_health_periodic_audit_time" {
  type        = number
  description = "The health check period for instances"
  default     = 5
}

variable "group_health_periodic_audit_grace_period" {
  type        = number
  description = "The health check grace period for instances"
  default     = null
}

variable "group_instance_terminate_policy" {
  type        = string
  description = "The instance removal policy"
  default     = "OLD_CONFIG_OLD_INSTANCE"
}

variable "group_agency_name" {
  type        = string
  description = "The IAM agency name"
  default     = null
}

variable "group_delete_publicip" {
  type        = bool
  description = "Whether to release the EIPs bound to ECSs when the ECSs are removed from the AS group"
  default     = null
}

variable "group_delete_volume" {
  type        = bool
  description = "Whether to delete the data disks attached to ECSs when the ECSs are removed"
  default     = null
}

variable "group_delete_instances" {
  type        = string
  description = "Whether to delete the instances in the AS group when deleting the AS group"
  default     = "no"
}

variable "group_force_delete" {
  type        = bool
  description = "Whether to forcibly delete the AS group"
  default     = null
}

variable "group_enable" {
  type        = bool
  description = "Whether to enable the AS Group"
  default     = true
}

variable "group_description" {
  type        = string
  description = "The description of the AS group"
  default     = null
}

variable "group_tags" {
  type        = map(string)
  description = "The key/value pairs to associate with the AS group"
  default     = null
}

variable "group_enterprise_project_id" {
  type        = string
  description = "The enterprise project ID of the AS group"
  default     = null
}

######################################################################
# Configurations of AS instance attach
######################################################################

variable "attach_instances_configuration" {
  type = list(object({
    instance_id      = optional(string)
    scaling_group_id = optional(string)
    protected        = optional(bool)
    standby          = optional(bool)
    append_instance  = optional(bool)
  }))
  description = "The attach instances configuration"
  default     = null
}

######################################################################
# Configurations of AS policy
######################################################################

variable "is_policy_create" {
  type        = bool
  description = "Controls whether the AS policy should be created"
  default     = true
  nullable    = false
}

variable "policy_name" {
  type        = string
  description = "the name of the AS policy"
  default     = null
}

variable "policy_group_id" {
  type        = string
  description = "the AS group ID"
  default     = null
}

variable "policy_type" {
  type        = string
  description = "the AS policy type"
  default     = null
}

variable "policy_alarm_id" {
  type        = string
  description = "the alarm rule ID"
  default     = null
}

variable "policy_scheduled_policy" {
  type = list(object({
    launch_time      = optional(string)
    recurrence_type  = optional(string)
    recurrence_value = optional(string)
    start_time       = optional(string)
    end_time         = optional(string)
  }))
  description = "the periodic or scheduled AS policy"
  default     = null
}

variable "policy_scaling_policy_action" {
  type = list(object({
    operation           = optional(string)
    instance_number     = optional(number)
    instance_percentage = optional(number)
  }))
  description = "the action of the AS policy"
  default     = null
}

variable "policy_cool_down_time" {
  type        = number
  description = "the cooling duration (in seconds)"
  default     = null
}

variable "policy_action" {
  type        = string
  description = "the operation for the AS policy"
  default     = null
}