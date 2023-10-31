variable "alias" {
  description = "The alias of the KMS"
}

variable "description" {
  description = "The description of the KMS"
  default     = ""
}

variable "realm" {
  description = "The realm of the KMS"
  default     = ""
}

variable "pending_days" {
  description = "The pending days after which the key is deleted"
  default     = ""
}

variable "is_enabled" {
  description = "Whether the key is enabled"
  default     = true
}
