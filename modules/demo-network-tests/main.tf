################################################################################
# 
# Demo UAT Tests for Network Resource
#
################################################################################

# Verify default network
data "openstack_networking_network_v2" "default-network" {
  name = "${var.network-name}"
  status = "${var.network-status}"
}

# Create new network
resource "openstack_networking_network_v2" "new-network" {
  name = "${var.new_network_name}"
}
