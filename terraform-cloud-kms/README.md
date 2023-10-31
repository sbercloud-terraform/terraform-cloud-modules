# Huawei Cloud KMS Terraform Module

Terraform moudle which creates KMS resource on Huawei Cloud.

These types of resources are supported:

* [KMS](https://www.terraform.io/docs/providers/huaweicloud/r/kms_key_v1.html)

## Usage

```hcl
module "example" {
  source = "terraform-huaweicloud-modules/kms/huaweicloud"

  alias        = "kms"
  description  = "kms module"
  realm        = "cn-north-1"
  pending_days = "7"
  is_enabled   = true
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| alias  | The alias in which to create the key  | string  | `""`  | yes  |
| description  | The description of the key  | string  | `""`  | no  |
| realm  | Region where a key resides  | string  | `""`  | no  |
| pending_days  | Duration in days after which the key is deleted  | string  | `""`  | no  |
| is_enabled  | Whether the key is enabled  | bool  | -  | no  |


## Outputs

| Name | Description |
|------|-------------|
| this_kms | The ID of the KMS |

Authors
----
Created and maintained by [Zhenguo Niu](https://github.com/niuzhenguo)

License
----
Apache 2 Licensed. See LICENSE for full details.
