# Sbercloud DWS Terraform module

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
### Cluster
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