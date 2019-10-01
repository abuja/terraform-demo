################################################################################
# 
# Demo UAT Tests for Flavor Resource
#
################################################################################

# Verify default flavors
data "openstack_compute_flavor_v2" "m1_small" {
  name = "${var.m1_small_name}"
  vcpus = "${var.m1_small_vcpus}"
  ram = "${var.m1_small_ram}"
  disk = "${var.m1_small_disk}"
}
