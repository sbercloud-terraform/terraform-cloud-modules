output "this_security_group_id" {
    description = "The ID of the security group"
    value       = "${var.security_group_id=="" ? join("",sbercloud_networking_secgroup.this.*.id) : var.security_group_id}"
}
