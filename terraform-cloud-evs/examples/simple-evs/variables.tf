variable "availability_zone" {
  description = "The availability zone where the EVS volume is located"

  type    = string
  default = null
}

variable "volume_name" {
  description = "The name of the EVS volume"

  type = string
}

variable "volume_type" {
  description = "The type of the EVS volume"

  type = string
}

variable "volume_size" {
  description = "The capacity of the EVS volume"

  type = number
}

variable "volume_tags" {
  description = "The key/value pairs of the EVS volumes"

  type    = map(string)
  default = {
    Creator = "terraform-sbercloud-evs",
  }
}
