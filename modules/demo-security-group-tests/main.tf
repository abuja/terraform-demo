################################################################################
# 
# Demo UAT Tests for Security Group Resource
#
################################################################################

# Verify default security group
data "openstack_networking_secgroup_v2" "default-security-group" {
  name = "${var.default_secgroup_name}"
}

# Verify creation of new security group
resource "openstack_networking_secgroup_v2" "new-security-group" {
  name = "${var.new_secgroup_name}"
  description = "New security group created by UAT tests"
}

# Allow certain ingress traffic for UAT test
resource "openstack_networking_secgroup_rule_v2" "ingress-security-group-rule" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
  port_range_min = "${var.ingress_port_range_min}"
  port_range_max = "${var.ingress_port_range_max}"
  remote_ip_prefix = "${var.ingress_cidr_block}"
  security_group_id = "${openstack_networking_secgroup_v2.new-security-group.id}"
}
