vpc_name = "simple_ecs_vpc_via_modules"

vpc_cidr_block = "192.168.0.0/20"

subnets_configuration = [
  {
    name = "simple_ecs_vpc_subnet_via_modules"
    cidr = "192.168.0.0/24"
  }
]

security_group_name = "simple_ecs_secgroup_via_modules"

security_group_rules_configuration = [
  {
    protocol         = "tcp"
    direction        = "ingress"
    remote_op_prefix = "0.0.0.0/0"
  }
]

instance_flavor_cpu = 2

instance_flavor_memory = 4

instance_name = "simple_ecs_instance_via_modules"

system_disk_size = 100

data_disks_configuration = [
  {
    type       = "GPSSD2"
    size       = 200
    iops       = 4000
    throughput = 250
  }
]
