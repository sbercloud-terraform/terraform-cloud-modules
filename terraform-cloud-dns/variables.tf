variable "zone_id" {
  description = "The ID of the DNS zone"
  default     = ""
}

variable "zone_name" {
  description = "The name of the DNS zone"
  default     = ""
}

variable "zone_type" {
  description = "The type of the DNS zone, can either be public or private"
  default     = "public"
}

variable "router_id" {
  description = "The router UUID, required if zone_type is private"
  default     = ""
}

variable "router_region" {
  description = "The region of the router, required if zone_type is private"
  default     = ""
}

variable "email" {
  description = "The email contact for the zone record"
  default     = ""
}

variable "description" {
  description = "A description of the zone"
  default     = "A new DNS zone created by Terrafrom module terraform-sbercloud-dns"
}

variable "recordsets" {
  description = "List of record sets in the DNS zone"
  type = list(object({
    name        = string
    description = string
    type        = string
    ttl         = number
    records     = list(string)
  }))
  default     = []
}
