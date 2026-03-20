# Example of the IPv4 EIP associate with the ECS instance

Configuration in this directory creates an ECS instance and associates an IPv4 EIP with it.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan 
$ terraform apply
```



## Requirements

| Name | Version |
|------|---------|
| Terraform | >= 1.3.0 |
| SberCloud Provider | >= 1.9.0, < 2.0.0 |


## Modules

<!-- markdownlint-disable MD013 -->
| Name | Source | Version |
|------|--------|---------|
| vpc_network | [terraform-provider-sbercloud](https://github.com/terraform-huaweicloud-modules/terraform-huaweicloud-vpc) | v1.2.0 |
| ecs_instance | [sbercloud_compute_instance](https://github.com/sbercloud-terraform/terraform-provider-sbercloud/blob/master/docs/resources/compute_instance.md) | N/A |
| eip_publicip | [../../terraform-cloud-vpc-eip/examples
/eip-ipv4-publicip](../../terraform-cloud-vpc-eip/examples
/eip-ipv4-publicip/README.md) | N/A |
<!-- markdownlint-enable MD013 -->

## Resources

| Name | Type |
|------|------|
| random_password.this | resource |
| data.sbercloud_availability_zones.this | resource |

## Inputs

<!-- markdownlint-disable MD013 -->
| Name | Description | Value |
|------|-------------|-------|
| region_name | The region where the resource is located | `"ru-moscow-1"` |
| enterprise_project_id | Used to specify whether the resource is created under the enterprise project (this parameter is only valid for enterprise users) | `"0"` |
| vpc_name | The name of the VPC to which the ECS instance belongs | `"VPC-Test"` |
| vpc_cidr | The CIDR of the VPC to which the ECS instance belongs | `"192.168.0.0/16"` |
| subnets_configuration | The configuration of the subnet resources to which the ECS instance belongs | <pre>[<br>  {<br>    "name": "VPC-Subnet-Test",<br>    "cidr": "192.168.0.0/20"<br>  }<br>]</pre> |
| security_group_name | The name of the security group to which the ECS instance belongs | `"VPC-Security-Group-Test"` |
| instance_flavor_cpu_core_count | The CPU core number of the instance flavor to be queried | `4` |
| instance_flavor_memory_size | The memory size of the instance flavor to be queried | `8` |
| instance_image_os_type | The OS type of the IMS image to be queried that the instance used | `"CentOS"` |
| instance_image_architecture | The architecture of the IMS image to be queried that the instance used | `"x86"` |
| instance_name | The name of the ECS instance | `"ECS-Test"` |
| instance_disks_configuration | The data disks configuration to attach to the instance resource | <pre>[<br>  {<br>    is_system_disk = true,<br>    type           = "SSD",<br>    size           = 200<br>  },<br>  {<br>    is_system_disk = false,<br>    name           = "EVS-Test",<br>    type           = "SSD",<br>    size           = 100<br>  }<br>]</pre> |
| eip_publicip_configuration | The configuration for the elastic IP | <pre>[<br>  {<br>    "type": "5_bgp",<br>    "ip_version": "4"<br>  }<br>]</pre> |
| eip_bandwidth_configuration | The bandwidth configuration for the elastic IP | <pre>[<br>  {<br>    "share_type": "PER",<br>    "name": "EIP-Bandwidth-Test",<br>    "size": 5<br>  }<br>]</pre> |
| eip_name | The name of the elastic IP | `"EIP-IPv4-PublicIP-Test"` |
<!-- markdownlint-enable MD013 -->

## Outputs

| Name | Description |
|------|-------------|
| eip_id | The ID of the elastic IP |
| eip_ipv4_address | The IPv4 address of the elastic IP |
| eip_associate_id | The associate ID of the elastic IP |
| eip_associate_instance_id | The instance ID to associate with the elastic IP |
