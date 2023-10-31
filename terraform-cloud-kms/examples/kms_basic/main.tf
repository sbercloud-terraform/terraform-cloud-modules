provider "sbercloud" {
  region   = "ru-moscow-1"
  account_name = ""
  access_key =  ""
  secret_key = ""
}

module "example" {
  source ="../.."

  alias        = "kms"
  description  = "kms module"
  realm        = "cn-north-1"
  pending_days = "7"
  is_enabled   = true
}
