## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which can cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

No providers.

## Modules

| Name | Source | Version |
|------|--------|---------|
| <a name="module_eip"></a> [eip](#module\_eip) | ../../ | n/a |

## Resources

No resources.

## Inputs

No inputs.

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