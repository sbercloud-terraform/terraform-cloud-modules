######################################################################
# Public configurations
######################################################################

variable "region_name" {
  description = "The region where the resource is located"

  type = string
}

variable "enterprise_project_id" {
  description = "Used to specify whether the resource is created under the enterprise project (this parameter is only valid for enterprise users)"

  type        = string
  default     = ""
}

######################################################################
# Attributes of the VPC resources
######################################################################

variable "vpc_name" {
  description = "The name of the VPC to which the ECS instance belongs"

  type = string
}

variable "vpc_cidr" {
  description = "The CIDR of the VPC to which the ECS instance belongs"

  type = string
}

variable "subnets_configuration" {
  description = "The configuration of the subnet resources to which the ECS instance belongs"

  type    = list(object({
    name = string
    cidr = string
  }))
}

variable "security_group_name" {
  description = "The name of the security group to which the ECS instance belongs"

  type = string
}

######################################################################
# Attributes of the ECS resources
######################################################################

variable "instance_flavor_cpu_core_count" {
  description = "The CPU core number of the instance flavor to be queried"

  type = number
}

variable "instance_flavor_memory_size" {
  description = "The memory size of the instance flavor to be queried"

  type = number
}

variable "instance_image_os_type" {
  description = "The OS type of the IMS image to be queried that the instance used"

  type = string
}

variable "instance_image_architecture" {
  description = "The architecture of the IMS image to be queried that the instance used"

  type = string
}

variable "instance_name" {
  description = "The name of the ECS instance resource"

  type = string
}

variable "instance_disks_configuration" {
  description = "The data disks configuration to attach to the instance resource"

  type = list(object({
    is_system_disk = bool
    name           = optional(string, "")
    type           = string
    size           = number
  }))
}

######################################################################
# Configurations of EIP resource and related resources
######################################################################

variable "eip_publicip_configuration" {
  description = "The configuration for the elastic IP"

  type = list(object({
    type       = optional(string, "")
    ip_address = optional(string, "")
    ip_version = optional(string, "")
  }))
}

variable "eip_bandwidth_configuration" {
  description = "The bandwidth configuration for the elastic IP"

  type = list(object({
    share_type  = string
    name        = optional(string, "")
    size        = optional(string, null)
    id          = optional(string, "")
    charge_mode = optional(string, "")
  }))
}

variable "eip_name" {
  description = "The name of the elastic IP"

  type = string
}