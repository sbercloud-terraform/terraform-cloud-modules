# Security Group basic example

Configuration in this directory creates Security Group and Security Group Rule.

## Usage
To run this example you need first replace the configuration like name, rules,etc, with your own resource and execute:

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
| this_security_group_id | The id of the security group |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
