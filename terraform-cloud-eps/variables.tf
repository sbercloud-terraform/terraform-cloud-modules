variable "create" {
  description = "Controls if resources should be created."
  type        = bool
  default     = true
}

variable "name" {
  description = "Specifies the name of the enterprise project."
  type        = string
}

variable "description" {
  description = "Specifies the description of the enterprise project."
  type        = string
  default     = null
}

variable "type" {
  description = "Specifies the type of the enterprise project."
  type        = string
  default     = null
}

variable "enable" {
  description = "Specifies whether to enable the enterprise project."
  type        = string
  default     = true
}

variable "skip_disable_on_destroy" {
  description = "Specifies whether to skip disable the enterprise project on destroy."
  type        = string
  default     = false
}