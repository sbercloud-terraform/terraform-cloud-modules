# Autoscaling with existing scaling configuration example

Configuration in this directory creates Autoscaling group and Autoscaling configuration.

## Usage
To run this example you need first replace the configuration like as_config_id, security_group,etc, with your own resource and execute:

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
| this_as_group_id | The id of the autoscaling group |
| this_as_configuration_id | The id of the autoscaling configuration |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
