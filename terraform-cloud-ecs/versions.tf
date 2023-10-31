terraform {
  required_providers {
    sbercloud = {
      source  = "sbercloud-terrafoem/sbercloud"
    }
  }
}

provider "sbercloud" {
  region   = "ru-moscow-1"
  account_name = ""
  access_key =  ""
  secret_key = ""
}