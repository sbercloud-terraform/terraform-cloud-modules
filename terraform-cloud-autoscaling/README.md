# Cloud.ru Auto Scaling Terraform Module

Terraform moudle which create Auto Scaling resource on Huawei Cloud.

These types of resources are supported:

* [Auto Scaling Group](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/as_group)
* [Auto Scaling Configuration](https://registry.terraform.io/providers/sbercloud-terraform/sbercloud/latest/docs/resources/as_configuration)

## Usage

```hcl
module "example" {
  source = "https://github.com/sbercloud-terraform/terraform-cloud-modules/tree/main/terraform-cloud-autoscaling"

  // Autoscaling Configuration
  configuration_name = "testASConfig"
  instance_id        = "2c31a1d8-80db-49bc-a3b1-8db55bdc0e60"
  key_name           = "KeyPair"

  // Autoscaling Group
  group_name         = "testASGroup"
  availability_zones = ["eu-west-0a", "eu-west-0b"]
  network_id         = "55534eaa-533a-419d-9b40-ec427ea7195a"
  security_group     = "e28c7982-ecf0-4498-852d-9683cfc364f2"
  vpc_id             = "8eed4fc7-e5e5-44a2-b5f2-23b3e5d46235" 
}
```

## Conditional creation

This moudle can create both Auto Scaling group and Auto Scaling configuration, it is
possible to use existing scaling configuration only if you specify `as_config_id` parameter.

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|:----:|:-----:|:-----:|
| as_config_id  | Specifying existing autoscaling configuration ID  | string  | `""`  | no  |
| configuration_name  | The name for the autoscaling configuration  | string  | `""`  | no  |
| instance_id  | The ID of the ECS instance  | string  | `""`  | no  |
| key_name  | The KeyPair of the ECS instance  | string  | `""`  | no  |
| group_name  | The name of the autoscaling group  | string  | `-`  | yes  |
| availability_zones  | List of availability zones in which to create the instances in the autoscaling group  | list  | `[]`  | no  |
| desire_instance_number  | The expected number of ECS instances  | string  | `"0"`  | no  |
| min_instance_number  | The minimum number of ECS instances  | string  | `"0"`  | no  |
| max_instance_number  | The maximum number of ECS instances  | string  | `"1"`  | no  |
| cool_down_time  | The cooling duration(in seconds)  | string  | `"300"`  | no  |
| lb_listener_id  | The ELB listener IDs, supporting up to three listeners, which are separated using a comma(,)  | string  | `""`  | no  |
| network_id  | The subnet Network ID  | string  | `-`  | yes  |
| security_group  | The security group ID to associate with the autoscaling group  | string  | `-`  | yes  |
| vpc_id  | The VPC ID  | string  | `-`  | yes  |
| health_periodic_audit_method  | The health check method for instances in the AS group. Valid options are ELB_AUDIT and NOVA_AUDIT  | string  | `"NOVA_AUDIT"`  | no  |
| health_periodic_audit_time  | The health check period for instances. Valid options are 5 minutes, 15 minutes, 60 minutes, and 180 minutes  | string  | `"5"`  | no  |
| instance_terminate_policy  | The instance removal policy. Valid options are OLD_CONFIG_OLD_INSTNACE, OLD_CONFIG_NEW_INSTANCE, OLD_INSTANCE, and NEW_INSTANCE  | string  | `"OLD_CONFIG_OLD_INSTANCE"`  | no  |
| delete_publicip  | Whether to delete the elastic IP address bound to the instances of the autoscaling group  | string  | `"false"`  | no  |


## Outputs

| Name | Description |
|------|-------------|
| this_as_group_id | The id of the autoscaling group |
| this_as_configuration_id | The id of the autoscaling configuration |

