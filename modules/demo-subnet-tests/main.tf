################################################################################
# 
# Demo UAT Tests for Subnet Resource
#
################################################################################

# Verify default subnet
data "openstack_networking_subnet_v2" "default_subnet_1" {
  name = "${var.default_subnet_name}"
}

# Create a temp network
resource "openstack_networking_network_v2" "network_1" {
  name           = "Dummy network for subnet uat tests"
}

# Create new subnet
resource "openstack_networking_subnet_v2" "new_subnet_1" {
  name = "${var.new_subnet_name}"
  network_id = "${openstack_networking_network_v2.network_1.id}"
  cidr = "10.0.0.0/24"
}
