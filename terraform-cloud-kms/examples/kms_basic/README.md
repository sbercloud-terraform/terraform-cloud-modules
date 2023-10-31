# KMS basic example

Configuration in this directory creates KMS keys.

## Usage
To run this example you need first replace the configuration like alias, realm,etc, with your own resource and execute:

```bash
$ terraform init
$ terraform plan
$ terraform apply
```

Note that this example may create resources which cost money. Run `terraform destroy` when you don't need these resources.

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Outputs

| Name | Description |
|------|-------------|
| this_kms | The ID of the KMS key |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
