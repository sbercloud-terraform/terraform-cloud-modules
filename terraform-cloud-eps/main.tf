resource "sbercloud_enterprise_project" "this" {
  count = var.create ? 1 : 0

  name                    = var.name
  description             = var.description
  type                    = var.type
  enable                  = var.enable
  skip_disable_on_destroy = var.skip_disable_on_destroy
}