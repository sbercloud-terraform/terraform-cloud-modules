# Sbercloud DWS Terraform module (Cluster)

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
module "cluster" {
    source  = "tf-cloud-modules/dws/sbercloud//modules/cluster"

    name              = "dws-test"
    node_type         = "dwsx2.xlarge.m7n"
    number_of_node    = 3
    availability_zone = "ru-moscow-1a"
    user_name         = "username"
    user_pwd          = "xxxxxxxx"
    vpc_id            = "xxx-xxx-xxx-xxx"
    network_id        = "xxx-xxx-xxx-xxx"
    security_group_id = "xxx-xxx-xxx-xxx"
}
```

<!-- BEGIN_TF_DOCS -->
## Requirements

| Name | Version |
|------|---------|
| <a name="requirement_terraform"></a> [terraform](#requirement\_terraform) | >= 0.13.1 |
| <a name="requirement_sbercloud"></a> [sbercloud](#requirement\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Providers

| Name | Version |
|------|---------|
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | 1.11.6 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_dws_cluster.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/dws_cluster) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_availability_zone"></a> [availability\_zone](#input\_availability\_zone) | AZ in a cluster. | `string` | `null` | no |
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_enterprise_project_id"></a> [enterprise\_project\_id](#input\_enterprise\_project\_id) | The enterprise project id of the DWS cluster. | `string` | `null` | no |
| <a name="input_name"></a> [name](#input\_name) | Cluster name. | `string` | n/a | yes |
| <a name="input_network_id"></a> [network\_id](#input\_network\_id) | Network ID, which is used for configuring cluster network. | `string` | n/a | yes |
| <a name="input_node_type"></a> [node\_type](#input\_node\_type) | Node type. | `string` | n/a | yes |
| <a name="input_number_of_cn"></a> [number\_of\_cn](#input\_number\_of\_cn) | The number of CN. | `number` | `null` | no |
| <a name="input_number_of_node"></a> [number\_of\_node](#input\_number\_of\_node) | Number of nodes in a cluster. | `number` | `null` | no |
| <a name="input_port"></a> [port](#input\_port) | Service port of a cluster. | `number` | `null` | no |
| <a name="input_public_ip"></a> [public\_ip](#input\_public\_ip) | Public ip options. | `list(any)` | `[]` | no |
| <a name="input_region"></a> [region](#input\_region) | The region in which to create the cluster resource. | `string` | `null` | no |
| <a name="input_security_group_id"></a> [security\_group\_id](#input\_security\_group\_id) | ID of a security group. | `string` | n/a | yes |
| <a name="input_tags"></a> [tags](#input\_tags) | The key/value pairs to associate with the resource. | `map(string)` | `null` | no |
| <a name="input_user_name"></a> [user\_name](#input\_user\_name) | Administrator username for logging in to a data warehouse cluster. | `string` | n/a | yes |
| <a name="input_user_pwd"></a> [user\_pwd](#input\_user\_pwd) | Administrator password for logging in to a data warehouse cluster. | `string` | n/a | yes |
| <a name="input_vpc_id"></a> [vpc\_id](#input\_vpc\_id) | VPC ID, which is used for configuring cluster network. | `string` | n/a | yes |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_availability_zone"></a> [availability\_zone](#output\_availability\_zone) | AZ in a cluster. |
| <a name="output_dss_pool_id"></a> [dss\_pool\_id](#output\_dss\_pool\_id) | Cluster dss pool id. |
| <a name="output_endpoints"></a> [endpoints](#output\_endpoints) | Cluster endpoints. |
| <a name="output_enterprise_project_id"></a> [enterprise\_project\_id](#output\_enterprise\_project\_id) | The enterprise project id of the DWS cluster. |
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
| <a name="output_kms_key_id"></a> [kms\_key\_id](#output\_kms\_key\_id) | KMS key id used by the cluster. |
| <a name="output_name"></a> [name](#output\_name) | Cluster name. |
| <a name="output_network_id"></a> [network\_id](#output\_network\_id) | Network ID, which is used for configuring cluster network. |
| <a name="output_node_type"></a> [node\_type](#output\_node\_type) | Node type. |
| <a name="output_number_of_node"></a> [number\_of\_node](#output\_number\_of\_node) | Number of nodes in a cluster. |
| <a name="output_port"></a> [port](#output\_port) | Service port of a cluster. |
| <a name="output_public_endpoints"></a> [public\_endpoints](#output\_public\_endpoints) | Cluster public endpoints. |
| <a name="output_region"></a> [region](#output\_region) | The region in which to create the cluster resource. |
| <a name="output_security_group_id"></a> [security\_group\_id](#output\_security\_group\_id) | ID of a security group. |
| <a name="output_user_name"></a> [user\_name](#output\_user\_name) | Administrator username for logging in to a data warehouse cluster. |
| <a name="output_user_pwd"></a> [user\_pwd](#output\_user\_pwd) | Administrator password for logging in to a data warehouse cluster. |
| <a name="output_version"></a> [version](#output\_version) | Cluster version. |
| <a name="output_vpc_id"></a> [vpc\_id](#output\_vpc\_id) | VPC ID, which is used for configuring cluster network. |
<!-- END_TF_DOCS -->