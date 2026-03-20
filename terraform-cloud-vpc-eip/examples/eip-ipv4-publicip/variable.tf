variable "create_eip" {
  description = "Controls if VPC EIP should be created."
  type        = bool
  default     = true
}

variable "create_bandwidth" {
  description = "Controls if VPC Bandwidth should be created."
  type        = bool
  default     = true
}


variable "region" {
  description = "The region in which to create the eip resource. If omitted, the provider-level region will be used."
  type        = string
  default     = null
}

variable "publicip_type" {
  description = "The type of the eip."
  type        = string
}

variable "publicip_ip_address" {
  description = "The value must be a valid IP address in the available IP address segment."
  type        = string
  default     = null
}

variable "publicip_port_id" {
  description = "The port id which this eip will associate with."
  type        = string
  default     = null
}

variable "bandwidth_share_type" {
  description = "Whether the bandwidth is dedicated or shared."
  type        = string
}

variable "bandwidth_name" {
  description = "The bandwidth name."
  type        = string
  default     = null
}

variable "bandwidth_size" {
  description = "The bandwidth size."
  type        = number
  default     = null
}

variable "bandwidth_id" {
  description = "The shared bandwidth id."
  type        = string
  default     = null
}

variable "bandwidth_charge_mode" {
  description = "Specifies whether the bandwidth is billed by traffic or by bandwidth size."
  type        = string
  default     = null
}

variable "tags" {
  description = "List of tags."
  type        = map(string)
  default     = {}
}

variable "enterprise_project_id" {
  description = "The enterprise project id of the elastic IP."
  type        = string
  default     = null
}

variable "charging_mode" {
  description = "Specifies the charging mode of the elastic IP."
  type        = string
  default     = null
}

variable "period_unit" {
  description = "Specifies the charging period unit of the elastic IP."
  type        = string
  default     = null
}

variable "period" {
  description = "Specifies the charging period of the elastic IP."
  type        = number
  default     = null
}

variable "auto_renew" {
  description = ""
  type        = string
  default     = null
}

