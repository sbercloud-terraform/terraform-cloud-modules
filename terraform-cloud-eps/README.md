# Sbercloud Enterprise Project Management Service (EPS) Terraform module

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
module "eps" {
    source  = "terraform-cloud-modules/terraform-cloud-eps/"

    name = "test"
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
| <a name="provider_sbercloud"></a> [sbercloud](#provider\_sbercloud) | >= 1.9.0, < 2.0.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [sbercloud_enterprise_project.this](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/enterprise_project) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_create"></a> [create](#input\_create) | Controls if resources should be created. | `bool` | `true` | no |
| <a name="input_description"></a> [description](#input\_description) | Specifies the description of the enterprise project. | `string` | `null` | no |
| <a name="input_enable"></a> [enable](#input\_enable) | Specifies whether to enable the enterprise project. | `string` | `true` | no |
| <a name="input_name"></a> [name](#input\_name) | Specifies the name of the enterprise project. | `string` | n/a | yes |
| <a name="input_skip_disable_on_destroy"></a> [skip\_disable\_on\_destroy](#input\_skip\_disable\_on\_destroy) | Specifies whether to skip disable the enterprise project on destroy. | `string` | `false` | no |
| <a name="input_type"></a> [type](#input\_type) | Specifies the type of the enterprise project. | `string` | `null` | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_id"></a> [id](#output\_id) | Specifies a resource ID in UUID format. |
<!-- END_TF_DOCS -->
