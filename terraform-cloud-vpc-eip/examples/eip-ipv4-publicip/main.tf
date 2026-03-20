provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}

module "eip" {
  source = "../../"

  publicip_type        = "5_bgp"
  bandwidth_share_type = "PER"
  bandwidth_name       = "test"
  bandwidth_size       = 5

  tags = {
    env = "test"
  }
}