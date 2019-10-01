################################################################################
# 
# Demo UAT Tests for Router Resource
#
################################################################################

# Find the network id by name
data "openstack_networking_network_v2" "default-network" {
  name = "${var.network_name}"
}

# Verify creation of new router for default network
resource "openstack_networking_router_v2" "new-router" {
  name = "${var.new_router_name}"
  external_network_id = "${data.openstack_networking_network_v2.default-network.id}"
}
