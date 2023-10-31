# Cloud.ru Security Group Terraform Module

Terraform moudle which create Security Group resource on Cloud.ru.

These types of resources are supported:

* [Security Group](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/networking_secgroup)
* [Security Group Rule](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/networking_secgroup_rule)

## Usage

```hcl
module "example" {
  source = "https://github.com/sbercloud-terraform/terraform-cloud-modules/"

  // Security Group
  name        = "testSG"
  description = "testSG description"

  // Security Group Rule
  rules = [
    {
      direction      = "ingress",
      ethertype      = "IPv4",
      protocol       = "tcp",
      port_range_min = "22",
      port_range_max = "22",
      remote_ip_cidr = "0.0.0.0/0"
    },
    {
      direction      = "ingress",
      ethertype      = "IPv4",
      protocol       = "tcp",
      port_range_min = "443",
      port_range_max = "443",
      remote_ip_cidr = "0.0.0.0/0"
    },
  ]
}
```

## Conditional creation

This moudle can create both Security Group and Security Group Rule, it is possible to use
existing security group only if you specify `security_group_id` parameter.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| security_group_id  | Specifying existing security group ID  | string  | `""`  | no  |
| name  | The name of the security group  | string  | `""`  | no  |
| description  | The description of the security group  | string  | `""`  | no  |
| delete_default_rules  | Whether or not to delete the default egress security rules  | bool  | `true`  | no  |
| rules  | List of rules associated with the security group  | list(map(string))  | `[]`  | no  |


## Outputs

| Name | Description |
|------|-------------|
| this_security_group_id | The id of the security group |

License
----
Apache 2 Licensed. See LICENSE for full details.
