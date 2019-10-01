################################################################################
# 
# Demo UAT Tests for Floating IP Resource
#
################################################################################

# Verify allocation of new floating IP from the default pool
resource "openstack_networking_floatingip_v2" "floatip" {
  pool = "${var.default_pool_name}"
  description = "Floating IP for QA team's UAT test purpose"
}
