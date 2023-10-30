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