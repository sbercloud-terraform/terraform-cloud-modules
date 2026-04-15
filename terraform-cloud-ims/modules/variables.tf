######################################################################
# Configurations of the IMS ECS system image resource
######################################################################

variable "is_ecs_system_image_create" {
  type        = bool
  description = "Controls whether the IMS ECS system image should be created"
  default     = true
  nullable    = false
}

variable "ecs_system_image_name" {
  type        = string
  description = "The name of the image"
  default     = null
}

variable "ecs_system_image_instance_id" {
  type        = string
  description = "The source ECS instance ID used to create the image"
  default     = null
}

variable "ecs_system_image_description" {
  type        = string
  description = "The description of the image"
  default     = null
}

variable "ecs_system_image_max_ram" {
  type        = number
  description = "The maximum memory of the image, in MB unit"
  default     = null
}

variable "ecs_system_image_min_ram" {
  type        = number
  description = "The minimum memory of the image, in MB unit"
  default     = null
}

variable "ecs_system_image_tags" {
  type        = map(string)
  description = "The key/value pairs to associate with the image"
  default     = null
}

variable "ecs_system_image_enterprise_project_id" {
  type        = string
  description = "The enterprise project ID of the image. For enterprise users, if omitted, default enterprise project will be used"
  default     = null
}

######################################################################
# Configurations of the IMS EVS system image resource
######################################################################

variable "is_evs_system_image_create" {
  type        = bool
  description = "Controls whether the IMS EVS system image should be created"
  default     = true
  nullable    = false
}

variable "evs_system_image_name" {
  type        = string
  description = "The name of the image"
  default     = null
}

variable "evs_system_image_volume_id" {
  type        = string
  description = "The EVS volume ID used to create the image"
  default     = null
}

variable "evs_system_image_os_version" {
  type        = string
  description = "The operating system version of the image"
  default     = null
}

variable "evs_system_image_type" {
  type        = string
  description = "The image type"
  default     = null
}

variable "evs_system_image_description" {
  type        = string
  description = "The description of the image"
  default     = null
}

variable "evs_system_image_max_ram" {
  type        = number
  description = "The maximum memory of the image, in MB unit"
  default     = null
}

variable "evs_system_image_min_ram" {
  type        = number
  description = "The minimum memory of the image, in MB unit"
  default     = null
}

variable "evs_system_image_tags" {
  type        = map(string)
  description = "The key/value pairs to associate with the image"
  default     = null
}

variable "evs_system_image_enterprise_project_id" {
  type        = string
  description = "The enterprise project ID of the image. For enterprise users, if omitted, default enterprise project will be used"
  default     = null
}