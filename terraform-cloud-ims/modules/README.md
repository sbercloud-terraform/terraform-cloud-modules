# IMS system image management

Manages the IMS system image resource.

## Notes

### How to import resources in the module structure

If you want to manage an existing IMS system image using Terraform (otherwise why are you reading this?) you need to
make sure that the corresponding module script has been defined in your `.tf` file, like this:

```hcl
# Manages an IMS system image.
module "ims_system_image" {
  source = "github.com/sbercloud-terraform/terraform-sbercloud-modules/terraform-cloud-ims/modules/ims-system-image"

  ...
}
```

Then, execute the following command to import the corresponding resource into the management of the `.tfstate` file.

```bash
$ terraform import module.ims_system_image.sbercloud_ims_ecs_system_image.this[0] "ecs_system_image_id"

module.ims_system_image.huaweicloud_ims_ecs_system_image.this[0]: Importing from ID "ecs_system_image_id"...
module.ims_system_image.huaweicloud_ims_ecs_system_image.this[0]: Import prepared!
  Prepared sbercloud_ims_ecs_system_image for import
module.ims_system_image.sbercloud_ims_ecs_system_image.this[0]: Refreshing state... [id=ecs_system_image_id]

Import successful!

The resources that were imported are shown above. These resources are now in
your Terraform state and will henceforth be managed by Terraform.
```

### What should we do before deploy this module example

Before manage IMS resources, tthe access key (AK, the corresponding environment name is SBC_ACCESS_KEY) and the secret key (SK, the corresponding environment name is SBC_SECRET_KEY) should be configured.

For the linux VM, you can configure the corresponding environment variables with the following commands:

export SBC_ACCESS_KEY="xxxx-xxx-xxx"
export SBC_SECRET_KEY="xxxx-xxx-xxx"

Refer to this [document](https://support.huaweicloud.com/intl/en-us/devg-apisign/api-sign-provide-aksk.html) for AK/SK
information obtain.

## Contributing


Full contributing [guidelines are covered here](../../.github/how_to_contribute.md).

## Requirements

| Name                 | Version   |
|----------------------|-----------|
| Terraform            | >= 1.3.0  |
| sbercloud Provider   | >= 1.12.16 |

## Modules

No module.

## Resources

| Name                                  | Type     |
|---------------------------------------|----------|
| sbercloud_ims_ecs_system_image.this | resource |
| sbercloud_ims_evs_system_image.this | resource |

## Inputs

<!-- markdownlint-disable MD013 -->
| Name                                   | Description                                                                                                       | Type                     | Default |                          Required                           |
|----------------------------------------|-------------------------------------------------------------------------------------------------------------------|--------------------------|:-------:|:-----------------------------------------------------------:|
| is_ecs_system_image_create             | Controls whether the IMS ECS system image should be created                                                       | `bool`                   | `true`  |                              N                              |
| ecs_system_image_name                  | The name of the image                                                                                             | `string`                 | `null`  | Y (Unless is_ecs_system_image_create is specified as false) |
| ecs_system_image_instance_id           | The source ECS instance ID used to create the image                                                               | `string`                 | `null`  | Y (Unless is_ecs_system_image_create is specified as false) |
| ecs_system_image_description           | The description of the image                                                                                      | `string`                 | `null`  |                              N                              |
| ecs_system_image_max_ram               | The maximum memory of the image, in MB unit                                                                       | `number`                 | `null`  |                              N                              |
| ecs_system_image_min_ram               | The minimum memory of the image, in MB unit                                                                       | `number`                 | `null`  |                              N                              |
| ecs_system_image_tags                  | The key/value pairs to associate with the image                                                                   | `<pre>map(string)</pre>` | `null`  |                              N                              |
| ecs_system_image_enterprise_project_id | The enterprise project ID of the image. For enterprise users, if omitted, default enterprise project will be used | `string`                 | `null`  |                              N                              |
| is_evs_system_image_create             | Controls whether the IMS EVS system image should be created                                                       | `bool`                   | `true`  |                              N                              |
| evs_system_image_name                  | The name of the image                                                                                             | `string`                 | `null`  | Y (Unless is_evs_system_image_create is specified as false) |
| evs_system_image_volume_id             | The EVS volume ID used to create the image                                                                        | `string`                 | `null`  | Y (Unless is_evs_system_image_create is specified as false) |
| evs_system_image_os_version            | The operating system version of the image                                                                         | `string`                 | `null`  | Y (Unless is_evs_system_image_create is specified as false) |
| evs_system_image_type                  | The image type                                                                                                    | `string`                 | `null`  |                              N                              |
| evs_system_image_description           | The description of the image                                                                                      | `string`                 | `null`  |                              N                              |
| evs_system_image_max_ram               | The maximum memory of the image, in MB unit                                                                       | `number`                 | `null`  |                              N                              |
| evs_system_image_min_ram               | The minimum memory of the image, in MB unit                                                                       | `number`                 | `null`  |                              N                              |
| evs_system_image_tags                  | The key/value pairs to associate with the image                                                                   | `<pre>map(string)</pre>` | `null`  |                              N                              |
| evs_system_image_enterprise_project_id | The enterprise project ID of the image. For enterprise users, if omitted, default enterprise project will be used | `string`                 | `null`  |                              N                              |
<!-- markdownlint-enable MD013 -->

## Outputs

| Name                    | Description             |
|-------------------------|-------------------------|
| ecs_system_image_id     | The ID of the image     |
| ecs_system_image_status | The status of the image |
| evs_system_image_id     | The ID of the image     |
| evs_system_image_status | The status of the image |
