terraform {
  required_providers {
    sbercloud = {
      source  = "mycloud.com/myorg/sbercloud"
    }
  }
}

provider "sbercloud" {
  region   = "ru-moscow-1"
  account_name = ""
  access_key =  ""
  secret_key = ""
}
# Create Keypair
resource "sbercloud_compute_keypair" "this" {
  name       = var.key_name
  public_key = var.public_key
}
