resource "sbercloud_as_configuration" "this" {
  count = var.is_configuration_create ? 1 : 0

  scaling_configuration_name = var.configuration_name
  instance_config {
    instance_id            = var.configuration_instance_id
    flavor                 = var.configuration_flavor
    image                  = var.configuration_image
    key_name               = var.configuration_key_name
    security_group_ids     = var.configuration_security_group_ids
    charging_mode          = var.configuration_charging_mode
    flavor_priority_policy = var.configuration_flavor_priority_policy
    ecs_group_id           = var.configuration_ecs_group_id
    tenancy                = var.configuration_tenancy
    dedicated_host_id      = var.configuration_dedicated_host_id
    user_data              = var.configuration_user_data
    admin_pass             = var.configuration_admin_pass
    metadata               = var.configuration_metadata

    dynamic "disk" {
      for_each = var.configuration_disk == null ? [] : try(var.configuration_disk, [])

      content {
        size                 = disk.value["size"]
        volume_type          = disk.value["volume_type"]
        disk_type            = disk.value["disk_type"]
        kms_id               = disk.value["kms_id"]
        iops                 = disk.value["iops"]
        throughput           = disk.value["throughput"]
        dedicated_storage_id = disk.value["dedicated_storage_id"]
        data_disk_image_id   = disk.value["data_disk_image_id"]
        snapshot_id          = disk.value["snapshot_id"]
      }
    }

    dynamic "personality" {
      for_each = var.configuration_personality == null ? [] : try(var.configuration_personality, [])

      content {
        path    = personality.value["path"]
        content = personality.value["content"]
      }
    }

    dynamic "public_ip" {
      for_each = var.configuration_public_ip == null ? [] : try(var.configuration_public_ip, [])

      content {
        dynamic "eip" {
          for_each = public_ip.value["eip"] == null ? [] : try(public_ip.value["eip"], [])

          content {
            ip_type = eip.value["ip_type"]
            dynamic "bandwidth" {
              for_each = eip.value["bandwidth"] == null ? [] : try(eip.value["bandwidth"], [])

              content {
                share_type    = bandwidth.value["share_type"]
                charging_mode = bandwidth.value["charging_mode"]
                size          = bandwidth.value["size"]
                id            = bandwidth.value["id"]
              }
            }
          }
        }
      }
    }
  }
}

resource "sbercloud_as_group" "this" {
  count = var.is_group_create ? 1 : 0

  scaling_group_name                 = var.group_name
  scaling_configuration_id           = var.group_configuration_id != null ? var.group_configuration_id : var.is_configuration_create ? try(huaweicloud_as_configuration.this[0].id, "") : ""
  desire_instance_number             = var.group_desire_instance_number
  min_instance_number                = var.group_min_instance_number
  max_instance_number                = var.group_max_instance_number
  cool_down_time                     = var.group_cool_down_time
  vpc_id                             = var.group_vpc_id
  availability_zones                 = var.group_availability_zones
  multi_az_scaling_policy            = var.group_multi_az_scaling_policy
  health_periodic_audit_method       = var.group_health_periodic_audit_method
  health_periodic_audit_time         = var.group_health_periodic_audit_time
  health_periodic_audit_grace_period = var.group_health_periodic_audit_grace_period
  instance_terminate_policy          = var.group_instance_terminate_policy
  agency_name                        = var.group_agency_name
  delete_publicip                    = var.group_delete_publicip
  delete_volume                      = var.group_delete_volume
  delete_instances                   = var.group_delete_instances
  force_delete                       = var.group_force_delete
  enable                             = var.group_enable
  description                        = var.group_description
  tags                               = var.group_tags
  enterprise_project_id              = var.group_enterprise_project_id

  dynamic "lbaas_listeners" {
    for_each = var.group_lbaas_listeners == null ? [] : try(var.group_lbaas_listeners, [])

    content {
      pool_id          = lbaas_listeners.value["pool_id"]
      protocol_port    = lbaas_listeners.value["protocol_port"]
      weight           = lbaas_listeners.value["weight"]
      protocol_version = lbaas_listeners.value["protocol_version"]
    }
  }

  dynamic "networks" {
    for_each = var.group_networks == null ? [] : try(var.group_networks, [])

    content {
      id                = networks.value["id"]
      ipv6_enable       = networks.value["ipv6_enable"]
      ipv6_bandwidth_id = networks.value["ipv6_bandwidth_id"]
      source_dest_check = networks.value["source_dest_check"]
    }
  }

  dynamic "security_groups" {
    for_each = var.group_security_groups == null ? [] : try(var.group_security_groups, [])

    content {
      id = security_groups.value["id"]
    }
  }
}

resource "sbercloud_as_instance_attach" "this" {
  count = length(var.attach_instances_configuration)

  instance_id      = lookup(element(var.attach_instances_configuration, count.index), "instance_id", null)
  scaling_group_id = lookup(element(var.attach_instances_configuration, count.index), "group_id", null) != null ? lookup(element(var.attach_instances_configuration, count.index), "group_id") : var.is_group_create ? huaweicloud_as_group.this[0].id : null
  protected        = lookup(element(var.attach_instances_configuration, count.index), "protected", null)
  standby          = lookup(element(var.attach_instances_configuration, count.index), "standby", null)
  append_instance  = lookup(element(var.attach_instances_configuration, count.index), "append_instance", null)
}

resource "sbercloud_as_policy" "this" {
  count = var.is_policy_create ? 1 : 0

  scaling_policy_name = var.policy_name
  scaling_group_id    = var.policy_group_id != null ? var.policy_group_id : var.is_group_create ? huaweicloud_as_group.this[0].id : null
  scaling_policy_type = var.policy_type
  alarm_id            = var.policy_alarm_id
  cool_down_time      = var.policy_cool_down_time
  action              = var.policy_action

  dynamic "scheduled_policy" {
    for_each = var.policy_scheduled_policy == null ? [] : try(var.policy_scheduled_policy, [])

    content {
      launch_time      = scheduled_policy.value["launch_time"]
      recurrence_type  = scheduled_policy.value["recurrence_type"]
      recurrence_value = scheduled_policy.value["recurrence_value"]
      start_time       = scheduled_policy.value["start_time"]
      end_time         = scheduled_policy.value["end_time"]
    }
  }

  dynamic "scaling_policy_action" {
    for_each = var.policy_scaling_policy_action == null ? [] : try(var.policy_scaling_policy_action, [])
    content {
      operation           = scaling_policy_action.value["operation"]
      instance_number     = scaling_policy_action.value["instance_number"]
      instance_percentage = scaling_policy_action.value["instance_percentage"]
    }
  }
}