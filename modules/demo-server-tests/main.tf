################################################################################
# 
# Demo UAT Tests for Server Resource
#
################################################################################

# Verify creation of new security group
resource "openstack_networking_secgroup_v2" "new-security-group" {
  name = "${var.new_secgroup_name}"
  description = "New security group created by UAT tests"
}

# Allow certain ingress traffic for UAT test
resource "openstack_networking_secgroup_rule_v2" "ingress-tcp-rule" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "tcp"
  port_range_min = "${var.ingress_port_range_min}"
  port_range_max = "${var.ingress_port_range_max}"
  remote_ip_prefix = "${var.ingress_cidr_block}"
  security_group_id = "${openstack_networking_secgroup_v2.new-security-group.id}"
}

resource "openstack_networking_secgroup_rule_v2" "ingress-icmp-rule" {
  direction = "ingress"
  ethertype = "IPv4"
  protocol = "icmp"
  remote_ip_prefix = "${var.ingress_cidr_block}"
  security_group_id = "${openstack_networking_secgroup_v2.new-security-group.id}"
}

# Create the server instance
resource "openstack_compute_instance_v2" "new_server_instance" {
  name = "${var.new_server_name}"
  image_id = "${var.image_id}"
  flavor_id = "1" # m1.small
  key_pair = "terraform-demo-regression-uat-test-keypair"
  security_groups = ["${openstack_networking_secgroup_v2.new-security-group.id}"]

  metadata = {
    description = "Compute server instance created by UAT test"
  }

  network {
    name = "demo-dev"
  }

  provisioner "local-exec" {
    command = "ping ${openstack_compute_instance_v2.new_server_instance.access_ip_v4} -c 10 -i 3 -t 60"
  }
}
