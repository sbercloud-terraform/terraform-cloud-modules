######################################################################
# Attributes of the VPC resources
######################################################################

variable "vpc_name" {
  description = "The name of the VPC to which the ECS instance belongs"

  type = string
}

variable "vpc_cidr_block" {
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

variable "security_group_rules_configuration" {
  description = "The rules configuration of security group to which the ECS instance belongs"

  type    = list(object({
    protocol         = string
    direction        = string
    remote_op_prefix = string
  }))
}

variable "availability_zone" {
  description = "The specified availability zone where the ECS instance is located"

  type    = string
  default = null
}

######################################################################
# Attributes of the ECS resources
######################################################################

variable "instance_flavor_id" {
  description = "The ID of the ECS instance flavor used to create the instance"

  type    = string
  default = null
}

variable "instance_flavor_performance" {
  description = "The performance type of the ECS instance flavor"

  type    = string
  default = "normal"
}

variable "instance_flavor_cpu" {
  description = "The CPU number of the ECS instance flavor"

  type    = number
  default = 4
}

variable "instance_flavor_memory" {
  description = "The memory number of the ECS instance flavor"

  type    = number
  default = null
}

variable "instance_image_id" {
  description = "The ID of the IMS image used to create the ECS instance"

  type    = string
  default = null
}

variable "instance_image_name" {
  description = "The name of the IMS image query image object"

  type    = string
  default = "Ubuntu 18.04 server 64bit"
}

variable "instance_name" {
  description = "The name of the ECS instance"

  type = string
}

variable "system_disk_type" {
  description = "The type of the system volume"

  type    = string
  default = "SSD"
}

variable "system_disk_size" {
  description = "The size of the system volume, in GB"

  type    = number
  default = 60
}

variable "data_disks_configuration" {
  description = "The configuration of data volumes of the ECS instance"

  type = list(object({
    type       = string
    size       = number
    iops       = string
    throughput = string
  }))

  default = [{
    type       = "SAS"
    size       = 60
    iops       = 3000
    throughput = 125
  }]
}

variable "admin_password" {
  description = "The login password of the administrator"

  type    = string
  default = null
}
