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

# Create KMS
resource "sbercloud_kms_key" "this" {
  key_alias       = var.alias
  key_description = var.description
  pending_days    = var.pending_days
  is_enabled      = var.is_enabled
}
