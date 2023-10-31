provider "sbercloud" {
  access_key  = "AK"
  secret_key  = "SK"
  region      = "ru-moscow-1"
  tenant_name = "ru-moscow-1-test-tenant"
}

module "example" {
  source ="../.."

  // Security Group
  name        = "testSG"
  description = "testSG description"

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
