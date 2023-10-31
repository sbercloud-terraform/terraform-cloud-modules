provider "sbercloud" {
  access_key  = "AK"
  secret_key  = "SK"
  region      = "ru-moscow-1"
  tenant_name = "ru-moscow-1-tenant"
}

data "sbercloud_networking_secgroup_v2" "default" {
  name = "default"
}

module "example" {
  source ="../.."

  security_group_id = "${data.sbercloud_networking_secgroup.default.id}"

  // Security Group Rule
  rules = [
    {
      direction      = "ingress",
      ethertype      = "IPv4",
      protocol       = "tcp",
      port_range_min = "22",
      port_range_max = "22",
      remote_ip_cidr = "0.0.0.0/0"
    },
    {
      direction      = "ingress",
      ethertype      = "IPv4",
      protocol       = "tcp",
      port_range_min = "443",
      port_range_max = "443",
      remote_ip_cidr = "0.0.0.0/0"
    },
  ]
}
