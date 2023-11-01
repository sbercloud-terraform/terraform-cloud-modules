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
data "sbercloud_networking_secgroup" "default" {
  name = "default"
}

module "example" {
  source ="../.."

  configuration_name = "testASConfig"
  instance_id        = "instance_id"
  key_name           = "KeyPair"
  group_name         = "testASGroup"
  availability_zones = ["ru-moscow-1a", "ru-moscow-1b"]
  network_id         = "subnet_id"
  security_group     = "${data.sbercloud_networking_secgroup.default.id}"
  vpc_id             = "vpc_id" 
}
