variable "name" {
  description = "The name of the SFS"
  default     = ""
}

variable "description" {
  description = "The description of the SFS"
  default     = ""
}

variable "size" {
  description = "The size of the SFS"
  default     = 1
}

variable "share_proto" {
  description = "The protocol for SFS"
  default     = "NFS"
}

variable "access_level" {
  description = "The access level of the SFS"
  default     = ""
}

variable "access_type" {
  description = "The access type of the SFS"
  default     = ""
}

variable "access_to" {
  description = "The access that the back end grants or denies"
  default     = ""
}

variable "availability_zone" {
  description = "The availability zone of the SFS"
  default     = ""
}

variable "is_public" {
  description = "The level of visibility for the SFS"
  default     = false
}
