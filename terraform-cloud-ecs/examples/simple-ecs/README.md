# Simple ECS

Configuration in this directory creates a default ECS instance.

Referring to this use case, you can write a basic ECS script.

## Usage

To run this example you need to execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example will create an instance and spend a few money. Run `terraform destory` when you don't need them.

## Requirement

| Name | Version |
|------|---------|
| Terraform | >= 1.3.0 |
| Random | >= 3.0.0 |

## Providers

[terraform-provider-sbercloud](https://github.com/sbercloud-terraform)


## Resources

| Name | Type |
|------|------|
| random_password.this[0] | resource |
| sbercloud_vpc.this[0] | resource |
| sbercloud_vpc_subnet.this[0] | resource |
| sbercloud_networking_secgroup.this[0] | resource |
| sbercloud_networking_secgroup_rule.in_v4_self_group[0] | resource |
| sbercloud_networking_secgroup_rule.this[0] | resource |
| sbercloud_compute_instance.this[0] | resource |

## Inputs

| Name | Description | Type | Default value |
|------|-------------|------|---------------|
| vpc_name | The name of the VPC to which the ECS instance belongs | string | N/A |
| vpc_cidr_block | The CIDR of the VPC to which the ECS instance belongs | string | N/A |
| subnets_configuration | The configuration of the subnet resources to which the ECS instance belongs | <pre>list(object({<br>  name = string<br>  cidr = string<br>}))</pre> | N/A |
| security_group_name | The name of the security group to which the ECS instance belongs | string | N/A |
| security_group_rules_configuration | The rules configuration of security group to which the ECS instance belongs | <pre>list(object({<br>  protocol = string<br>  direction = string<br>  remote_op_prefix = string<br>}))</pre> | N/A |
| availability_zone | The specified availability zone where the ECS instance is located | string | null |
| instance_flavor_id | The ID of the ECS instance flavor used to create the instance | string | null |
| instance_flavor_performance | The performance type of the ECS instance flavor | string | "normal" |
| instance_flavor_cpu | The CPU number of the ECS instance flavor | number | 4 |
| instance_flavor_memory | The memory number of the ECS instance flavor | number | null |
| instance_image_id | The ID of the IMS image used to create the ECS instance | string | null |
| instance_image_name | The name of the IMS image query image object | string | "Ubuntu 18.04 server 64bit" |
| instance_name | The name of the ECS instance | string | N/A |
| system_disk_type | The type of the system volume | string | "SSD" |
| system_disk_size | The size of the system volume, in GB | number | 60 |
| data_disks_configuration | The configuration of data volumes of the ECS instance | <pre>list(object({<br>  type = string<br>  size = number<br>}))</pre> | <pre>[{<br>  type = "SAS"<br>  size = 60<br>}]</pre> |
| admin_password | The login password of the administrator | string | null |

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
