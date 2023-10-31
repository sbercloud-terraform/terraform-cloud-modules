# The Terraform module of Cloud.ru EVS service

The terraform module for one-click deployment of EVS Volume resources.

## Usage

```hcl
variable "volume_name" {}
variable "volume_count" {}

data "sbercloud_availability_zones" "test" {}

module "evs_service" {
  source = "./"

  volume_name       = var.volume_name
  volume_count      = var.volume_count
  availability_zone = data.sbercloud_availability_zones.test.names[0]
}
```

## Contributing

Report issues/questions/feature requests in the [issues](https://github.com/sbercloud-terraform/terraform-cloud-modules/issues)
section.

Full contributing [guidelines are covered here](.github/how_to_contribute.md).

## Requirements

| Name | Version |
|------|---------|
| Terraform | >= 1.3.0 |


## Resources

| Name | Type |
|------|------|
| sbercloud_evs_volume.this | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|----------|
| charging_mode | The charging mode of the EVS resources | string | null | N |
| period_unit | The period unit of the pre-paid purchase | string | null | N |
| period | The period number of the pre-paid purchase | number | null | N |
| is_auto_renew | Whether to automatically renew after expiration for EVS resources | bool | null | N |
| name_suffix | The suffix string of name for all EVS resources | string | "" | N |
| is_volume_create | Controls whether the EVS volumes should be created (it affects all EVS related resources under this module) | bool | true | N |
| availability_zone | The availability zone where the EVS volume | string | N/A | Y |
| volume_count | The total count of the EVS volumes | string | null | N |
| volume_name | The name of the EVS volumes | string | null | N |
| volume_description | The description of the EVS volumes | string | null | N |
| enterprise_project_id | The ID of the enterprise project to which the EVS volume belongs | string | null | N |
| volume_type | The type of the EVS volume | string | "SSD" | N |
| volume_size | The capacity of the EVS volume | number | 100 | N |
| image_id | The ID of the image that used to create the EVS volume | string | null | N |
| backup_id | The ID of the backup that used to create the EVS volume | string | null | N |
| snapshot_id | The ID of the snapshot that used to create the EVS volume | string | null | N |
| is_multiattach | Whether the EVS volume can mount multiple devices | bool | false | N |
| encryption_kms_id | The ID of the KMS key that used to encryption the EVS volume | string | null | N |
| device_type | The device type of the disk that the EVS volume will be create | string | null | N |
| is_cascade_delete | Whether delete all snapshots associated with the EVS volume while volume deleted | bool | false | N |
| volume_tags | The key/value pairs of the EVS volumes | map(string) | {} | N |

## Outputs

| Name | Description |
|------|-------------|
| volume_id | The ID of the first volume |
| volume_ids | The ID list of all EVS volume resources |
| volume_wwns | The unique identifier list for all EVS volume resources mounting |
