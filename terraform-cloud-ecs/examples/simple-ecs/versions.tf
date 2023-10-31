terraform {

  required_providers {
    sbercloud = {
      source  = "sbercloud-terraform/sbercloud"
    }

    random = {
      source  = "hashicorp/random"
      version = ">= 3.0.0"
    }
  }
}

provider "sbercloud" {
  region   = "ru-moscow-1"
  account_name = ""
  access_key =  ""
  secret_key = ""
}
