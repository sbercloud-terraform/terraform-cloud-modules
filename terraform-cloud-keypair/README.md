# Cloud.ru Keypair Terraform Module

Terraform moudle which creates Keypair resource on Huawei Cloud.

These types of resources are supported:

* [Keypair](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/compute_keypair)

## Usage

```hcl
module "example" {
  source = "../"

  name = "keypair"
  public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDAjpC1hwiOCCmKEWxJ4qzTTsJbKzndLo1BCz5PcwtUnflmU+gHJtWMZKpuEGVi29h0A/+ydKek1O18k10Ff+4tyFjiHDQAT9+OfgWf7+b1yK+qDip3X1C0UPMbwHlTfSGWLGZquwhvEFx9k3h/M+VtMvwR1lJ9LUyTAImnNjWG7TAIPmui30HvM2UiFEmqkr4ijq45MyX2+fLIePLRIFuu1p4whjHAQYufqyno3BS48icQb4p6iVEZPo4AE2o9oIyQvj2mx4dk5Y8CgSETOZTYDOR3rU2fZTRDRgPJDH9FWvQjF5tA0p3d9CoWWd2s6GKKbfoUIi8R/Db1BSPJwkqB jrp-hp-pc"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| name  | The name of the Keypair  | string  | `""`  | yes  |
| public_key  | The public key of the Keypair  | string  | `""`  | yes  |


## Outputs

| Name | Description |
|------|-------------|
| this_keypair | The name of the Keypair |

