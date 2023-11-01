terraform {
  required_providers {
    sbercloud = {
      source  = "sbercloud-terraform/sbercloud"
    }
  }
}

provider "sbercloud" {
  region   = "ru-moscow-1"
  account_name = ""
  access_key =  ""
  secret_key = ""
}

# Create DNS zone
resource "sbercloud_dns_zone" "this" {
  count       = var.zone_id=="" ? 1 : 0
  name        = var.zone_name
  zone_type   = var.zone_type
  email       = var.email
  description = var.description
  router {
    router_id     = var.router_id
    router_region = var.router_region
  }
}

# Create DNS recordset
resource "sbercloud_dns_recordset" "this" {
  count       = length(var.recordsets)
  zone_id     = var.zone_id=="" ? join("",sbercloud_dns_zone.this.*.id) : var.zone_id
  name        = var.recordsets[count.index]["name"]
  ttl         = var.recordsets[count.index]["ttl"]
  type        = var.recordsets[count.index]["type"]
  records     = var.recordsets[count.index]["records"]
  description = var.recordsets[count.index]["description"]
}
