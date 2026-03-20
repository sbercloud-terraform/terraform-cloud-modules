# Sbercloud VPC EIP Terraform module

## How to Configure Terraform for Sbercloud

- [Sbercloud Quickstart](https://cloud.ru/ru/docs/terraform/ug/topics/quickstart.html)
- Add environment variables for terraform authentication in Sbercloud

```
export SBC_ACCESS_KEY="xxxx-xxx-xxx"
export SBC_SECRET_KEY="xxxx-xxx-xxx"
```

## Provider configuration
```hcl
provider "sbercloud" {
  auth_url = "https://iam.ru-moscow-1.hc.sbercloud.ru/v3"
  region   = "ru-moscow-1"
}
```

## Usage
```hcl
module "vpc-eip" {
    source  = "tf-cloud-modules/vpc-eip/sbercloud"

    publicip_type        = "5_bgp"
    bandwidth_share_type = "PER"
    bandwidth_name       = "test"
    bandwidth_size       = 5

    tags = {
    env = "test"
    }
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.9.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_vpc_bandwidth.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/vpc_bandwidth) | resource |
| [sbercloud_vpc_eip.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/vpc_eip) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_auto_renew"></a> [auto\_renew](#input\_auto\_renew) | n/a | `string` | `null` | no |
| <a name="input_bandwidth_charge_mode"></a> [bandwidth\_charge\_mode](#input\_bandwidth\_charge\_mode) | Specifies whether the bandwidth is billed by traffic or by bandwidth size. | `string` | `null` | no |
| <a name="input_bandwidth_id"></a> [bandwidth\_id](#input\_bandwidth\_id) | The shared bandwidth id. | `string` | `null` | no |
| <a name="input_bandwidth_name"></a> [bandwidth\_name](#input\_bandwidth\_name) | The bandwidth name. | `string` | `null` | no |
| <a name="input_bandwidth_share_type"></a> [bandwidth\_share\_type](#input\_bandwidth\_share\_type) | Whether the bandwidth is dedicated or shared. | `string` | n/a | yes |
| <a name="input_bandwidth_size"></a> [bandwidth\_size](#input\_bandwidth\_size) | The bandwidth size. | `number` | `null` | no |
| <a name="input_charging_mode"></a> [charging\_mode](#input\_charging\_mode) | Specifies the charging mode of the elastic IP. | `string` | `null` | no |
| <a name="input_create_bandwidth"></a> [create\_bandwidth](#input\_create\_bandwidth) | Controls if VPC Bandwidth should be created. | `bool` | `true` | no |
| <a name="input_create_eip"></a> [create\_eip](#input\_create\_eip) | Controls if VPC EIP should be created. | `bool` | `true` | no |
| <a name="input_enterprise_project_id"></a> [enterprise\_project\_id](#input\_enterprise\_project\_id) | The enterprise project id of the elastic IP. | `string` | `null` | no |
| <a name="input_period"></a> [period](#input\_period) | Specifies the charging period of the elastic IP. | `number` | `null` | no |
| <a name="input_period_unit"></a> [period\_unit](#input\_period\_unit) | Specifies the charging period unit of the elastic IP. | `string` | `null` | no |
| <a name="input_publicip_ip_address"></a> [publicip\_ip\_address](#input\_publicip\_ip\_address) | The value must be a valid IP address in the available IP address segment. | `string` | `null` | no |
| <a name="input_publicip_port_id"></a> [publicip\_port\_id](#input\_publicip\_port\_id) | The port id which this eip will associate with. | `string` | `null` | no |
| <a name="input_publicip_type"></a> [publicip\_type](#input\_publicip\_type) | The type of the eip. | `string` | n/a | yes |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the eip resource. If omitted, the provider-level region will be used. | `string` | `null` | no |
| <a name="input_tags"></a> [tags](#input\_tags) | List of tags. | `map(string)` | `{}` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_bandwidth_charge_mode"></a> [bandwidth\_charge\_mode](#output\_bandwidth\_charge\_mode) | Indicates whether the billing is based on traffic, bandwidth, or 95th percentile bandwidth (enhanced). |
| <a name="output_bandwidth_enterprise_project_id"></a> [bandwidth\_enterprise\_project\_id](#output\_bandwidth\_enterprise\_project\_id) | The enterprise project id of the Shared Bandwidth. |
| <a name="output_bandwidth_id"></a> [bandwidth\_id](#output\_bandwidth\_id) | ID of the Shared Bandwidth. |
| <a name="output_bandwidth_name"></a> [bandwidth\_name](#output\_bandwidth\_name) | The name of the Shared Bandwidth. |
| <a name="output_bandwidth_region"></a> [bandwidth\_region](#output\_bandwidth\_region) | The region in which to create the Shared Bandwidth. |
| <a name="output_bandwidth_share_type"></a> [bandwidth\_share\_type](#output\_bandwidth\_share\_type) | Indicates whether the bandwidth is shared or dedicated. |
| <a name="output_bandwidth_size"></a> [bandwidth\_size](#output\_bandwidth\_size) | The size of the Shared Bandwidth. |
| <a name="output_eip_address"></a> [eip\_address](#output\_eip\_address) | The IP address of the eip. |
| <a name="output_eip_charging_mode"></a> [eip\_charging\_mode](#output\_eip\_charging\_mode) | Specifies the charging mode of the elastic IP. |
| <a name="output_eip_enterprise_project_id"></a> [eip\_enterprise\_project\_id](#output\_eip\_enterprise\_project\_id) | The enterprise project id of the elastic IP. |
| <a name="output_eip_id"></a> [eip\_id](#output\_eip\_id) | The shared bandwidth id. |
| <a name="output_eip_ipv6_address"></a> [eip\_ipv6\_address](#output\_eip\_ipv6\_address) | The IPv6 address of the eip. |
| <a name="output_eip_port_id"></a> [eip\_port\_id](#output\_eip\_port\_id) | The port id which this eip will associate with. |
| <a name="output_eip_region"></a> [eip\_region](#output\_eip\_region) | The region in which to create the eip resource. |
<!-- END_TF_DOCS -->