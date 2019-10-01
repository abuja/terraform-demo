################################################################################
# 
# Demo UAT Tests for Port Resource
#
################################################################################

# Find the network id by name
data "openstack_networking_network_v2" "default-network" {
  name = "${var.network_name}"
}

# Create new port
resource "openstack_networking_port_v2" "new-port" {
  name = "${var.new_port_name}"
  network_id = "${data.openstack_networking_network_v2.default-network.id}"
}
