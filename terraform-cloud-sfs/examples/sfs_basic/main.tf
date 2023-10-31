provider "sbercloud" {
  region   = "ru-moscow-1"
  account_name = ""
  access_key =  ""
  secret_key = ""
}

module "example" {
  source ="../.."

  name              = "sfs"
  description       = "sfs module"
  size              = 1
  share_proto       = "NFS"
  access_level      = "rw"
  access_type       = "cert"
  access_to         = "8eed4fc7-e5e5-44a2-b5f2-23b3e5d46235"
  availability_zone = "ru-moscow-1a"
  is_public         = false
}
