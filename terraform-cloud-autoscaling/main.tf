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
# Create AS Configuration
resource "sbercloud_as_configuration" "this" {
  count                      = "${var.as_config_id=="" ? 1 : 0}"
  scaling_configuration_name = "${var.configuration_name}"

  
  instance_config {
    instance_id = "${var.instance_id}"
    key_name    = "${var.key_name}"
  }
}

# Create AS Group
resource "sbercloud_as_group" "this" {
  scaling_group_name       = "${var.group_name}"
  scaling_configuration_id = "${var.as_config_id=="" ? join("",sbercloud_as_configuration.this.*.id) : var.as_config_id}"
  available_zones          = "${var.availability_zones}"
  desire_instance_number   = "${var.desire_instance_number}"
  min_instance_number      = "${var.min_instance_number}"
  max_instance_number      = "${var.max_instance_number}"
  cool_down_time           = "${var.cool_down_time}"
  lb_listener_id           = "${var.lb_listener_id}"

  networks {
    id = "${var.network_id}"
  }
  security_groups {
    id = "${var.security_group}"
  }

  vpc_id                       = "${var.vpc_id}"
  health_periodic_audit_method = "${var.health_periodic_audit_method}"
  health_periodic_audit_time   = "${var.health_periodic_audit_time}"
  instance_terminate_policy    = "${var.instance_terminate_policy}"
  delete_publicip              = "${var.delete_publicip}"
}
