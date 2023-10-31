######################################################################
# Attributes of the CBC payment
######################################################################

variable "charging_mode" {
  description = "The charging mode of the EVS resources"

  type    = string
  default = null
}

variable "period_unit" {
  description = "The period unit of the pre-paid purchase"

  type    = string
  default = null
}

variable "period" {
  description = "The period number of the pre-paid purchase"

  type    = number
  default = null
}

variable "is_auto_renew" {
  description = "Whether to automatically renew after expiration for EVS resources"

  type    = bool
  default = null
}

######################################################################
# Public configurations
######################################################################

# Specifies the suffix name for EVS resources, if omitted, using volume_name to create EVS resources
variable "name_suffix" {
  description = "The suffix string of name for all EVS resources"

  type    = string
  default = "test"
}

######################################################################
# Configuration of EVS resources
######################################################################

variable "is_volume_create" {
  description = "Controls whether the EVS volumes should be created (it affects all EVS related resources under this module)"

  type    = bool
  default = true
}

variable "availability_zone" {
  description = "The availability zone where the EVS volume is located"

  type = string
  default = "ru-moscow-1a"
}

variable "volume_count" {
  description = "The total count of the EVS volumes"

  type    = number
  default = null
}

variable "volume_name" {
  description = "The name of the EVS volumes"

  type    = string
  default = "test"
}

variable "volume_description" {
  description = "The description of the EVS volumes"

  type    = string
  default = null
}

variable "enterprise_project_id" {
  description = "The ID of the enterprise project to which the EVS volume belongs."

  type    = string
  default = null
}

variable "volume_type" {
  description = "The type of the EVS volumes"

  type    = string
  default = "SSD"
}

variable "volume_size" {
  description = "The capacity of the EVS volumes"

  type    = number
  default = 100
}

variable "image_id" {
  description = "The ID of the image that used to create the EVS volumes"

  type    = string
  default = null
}

variable "backup_id" {
  description = "The ID of the backup that used to create the EVS volumes"

  type    = string
  default = null
}

variable "snapshot_id" {
  description = "The ID of the snapshot that used to create the EVS volumes"

  type    = string
  default = null
}

variable "is_multiattach" {
  description = "Whether the EVS volume can mount multiple devices"

  type    = bool
  default = false
}

variable "encryption_kms_id" {
  description = "The ID of the KMS key that used to encryption the EVS volumes"

  type    = string
  default = null
}

variable "device_type" {
  description = "The device type of the disk that the EVS volumes will be create"

  type    = string
  default = null
}

variable "is_cascade_delete" {
  description = "Whether delete all snapshots associated with the EVS volumes while volume deleted"

  type    = bool
  default = false
}

variable "volume_tags" {
  description = "The key/value pairs of the EVS volumes"

  type    = map(string)
  default = {}
}
