################################################################################
# 
# Demo UAT Tests for Key Pair Resource
#
################################################################################

# Verify creation of new keypair by importing existing public key file
resource "openstack_compute_keypair_v2" "test-keypair" {
  name = "terraform-demo-regression-uat-test-keypair"
  public_key = "${file(var.public_key_file)}"
}
