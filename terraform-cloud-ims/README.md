# The Terraform module of HUAWEI Cloud IMS service

What capabilities does the current module provide:

+ Flexible IMS resource combination (through multiple IMS sub-modules)
+ Abundant example references, one-click deployment of IMS resources.

## Notes

If you want to manage IMS resources using Terraform module (via this repository), you need to make the following
declaration in the `source` of the script.

```hcl
# Use the latest version.
module "ims_system_image" {
  source = "https://github.com/sbercloud-terraform/terraform-cloud-modules/terraform-cloud-ims/modules/ims-system-image"
}
```

## Contributing

Report issues/questions/feature requests in the [issues](https://github.com/sbercloud-terraform/terraform-cloud-modules/terraform-cloud-ims/issues/new)
section.

Full contributing [guidelines are covered here](.github/how_to_contribute.md).

## Requirements

| Name                 | Version   |
|----------------------|-----------|
| Terraform            | >= 1.3.0  |
| Cloud.ru Provider    | >= 1.12.16 |

## Modules

No module.

## Resources

No resource.

## Inputs

No input.

## Outputs

No output.
