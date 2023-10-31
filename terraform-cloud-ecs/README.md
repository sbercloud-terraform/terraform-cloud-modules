# The Terraform module of Cloud.ru ECS service

The terraform module for one-click deployment of ECS instance.

## Usage

### Create an ECS instance by public image

```hcl
variable "subnet_id" {}
variable "security_group_ids" {}
variable "flavor_id" {}
variable "image_id" {}
variable "system_disk_type" {}
variable "system_disk_size" {}
variable "admin_password" {}
variable "data_disks_configuration" {}

module "ecs_service" {
  source = "./"

  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids

  instance_name            = var.instance_name
  instance_flavor_id       = var.flavor_id
  instance_image_id        = var.image_id
  system_disk_type         = var.system_disk_type
  system_disk_size         = var.system_disk_size
  admin_password           = var.admin_password
  data_disks_configuration = var.data_disks_configuration
}
```

### Create an ECS instance by the whole image

```hcl
variable "subnet_id" {}
variable "security_group_ids" {}
variable "instance_flavor_id" {}
variable "is_whole_image_used" {
  default = true
}
variable "instance_image_name" {}
variable "system_disk_type" {}
variable "system_disk_size" {}
variable "admin_password" {}
variable "data_disks_configuration" {}

module "ecs_service" {
  source = "./"

  subnet_id          = var.subnet_id
  security_group_ids = var.security_group_ids

  instance_name            = var.instance_name
  instance_flavor_id       = var.instance_flavor_id
  is_whole_image_used      = var.is_whole_image_used
  instance_image_name      = var.instance_image_name
  system_disk_type         = var.system_disk_type
  system_disk_size         = var.system_disk_size
  admin_password           = var.admin_password
  data_disks_configuration = var.data_disks_configuration
}
```

## Contributing

Report issues/questions/feature requests in the [issues](https://github.com/sbercloud-terraform/terraform-cloud-modules/issues)
section.


## Requirements

| Name | Version |
|------|---------|
| Terraform | >= 1.3.0 |


## Resources

| Name | Type |
|------|------|
| data.sbercloud_availability_zones.this | data-source |
| data.sbercloud_compute_flavors.this | data-source |
| data.sbercloud_images_image.this | data-source |
| data.sbercloud_cbr_backup.this | data-source |
| sbercloud_compute_instance.this | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| charging_mode | The charging mode of the ECS resources | string | null | N |
| period_unit | The period unit of the pre-paid purchase | string | null | N |
| period | The period number of the pre-paid purchase | number | null | N |
| is_auto_renew | Whether to automatically renew after expiration for ECS resources | bool | null | N |
| name_suffix | The suffix string of name for all ECS resources | string | null | N |
| subnet_id | The ID of the VPC subnet to which the ECS instance belongs | string | null | N |
| security_group_ids | The ID list of the security groups to which the ECS instance belongs | list(string) | [] | N |
| availability_zone | The specified availability zone where the ECS instance is located | string | null | N |
| is_instance_create | Controls whether a ECS instance should be created (it affects all ECS related resources under this module) | bool | true | N |
| instance_count | The total number of the ECS instances | number | 0 | N |
| instance_name | The name of the ECS instance | string | null | N |
| instance_flavor_id | The ID of the ECS instance flavor | string | null | N |
| instance_flavor_performance | The performance type of the ECS instance flavor | string | null | N |
| instance_flavor_cpu | The CPU number of the ECS instance flavor | number | null | N |
| instance_flavor_memory | The memory number of the ECS instance flavor | number | null | N |
| instance_image_id | The ID of the IMS image that ECS instance used | string | null | N |
| instance_image_name | The name of the IMS image that ECS instance used | string | null | N |
| system_disk_type | The type of the system volume | string | "SSD" | N |
| system_disk_size | The size of the system volume, in GB | number | 40 | N |
| eip_id | The ID of the EIP assigned to the ECS instance | string | null | N |
| admin_password | The login password of the administrator | string | null | N |
| user_data | The user data to be injected during the ECS instance creation | string | null | N |
| scheduler_hints_configuration | The scheduler with hints on how instance should be launched | <pre>list(object({<br>  group   = string<br>  tenancy = string<br>  deh_id  = string<br>})</pre> | [] | N |
| stop_before_destroy | Whether to try stop instance gracefully before destroying it, thus giving chance for guest OS daemons to stop correctly | bool | true | N |
| delete_disks_on_termination | Whether to delete the data disks when the instance is terminated | bool | true | N |
| delete_eip_on_termination | Whether to release the EIP when the instance is terminated | bool | true | N |
| fixed_ip_v4 | The fixed IP address that ECS instance have | string | null | N |
| ipv6_enable | Whether to enable the IPv6 network | bool | false | N |
| source_dest_check | Whether the ECS processes only traffic that is destined specifically for it | bool | false | N |
| access_network | Whether network should be used for provisioning access | bool | false | N |
| is_whole_image_used | Whether restore the disks from the whole image | bool | false | N |
| restore_data_disk_type | The type of data disks restored from the whole image | string | "SSD" | N |
| data_disks_configuration | The configuration of data disks of the ECS instance | list(object({<br>  type        = optional(string, "SSD")<br>  size        = optional(number, 100)<br>  snapshot_id = optional(string, null)<br>  kms_key_id  = optional(string, null)<br>  iops        = optional(string, null)<br>  throughput  = optional(string, null)<br>})) | [{<br>  type = "SSD"<br>  size = 200<br>}] | N |
| scheduler_hints_configuration | The scheduler with hints on how instance should be launched | <pre>list(object({<br>  type        = string<br>  size        = number<br>  snapshot_id = string<br>})</pre> | <pre>[<br>  {<br>    type = "SSD"<br>    size = 200<br>  }<br>]</pre> | N |
| instance_tags | The key/value pairs of the ECS instance | map(string) | {} | N |
| keypair_name | The name of the key-pair for encryption and login ECS instance | string | null | N |
| user_id | The ID of the IAM user used to login ECS instance | string | null | N |

## Outputs

| Name | Description |
|------|-------------|
| instance_ids | The ID list of the ECS instances |
| instance_id | The ID of the first ECS instance |
| instance_name | The name of the first ECS instance |
| instance_status | The status of the first ECS instance |
| instance_public_ip | The public IP of the first ECS instance |
| instance_access_ipv4 | The fixed IPv4 address or the floating IP of the first ECS instance |
| instance_access_ipv6 | The fixed IPv6 address of the first ECS instance |
| instance_network | The network object of the first ECS instance |
