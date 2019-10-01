################################################################################
# 
# Demo UAT Tests for Volume Resource
#
################################################################################

# Verify creation of new volume with default settings
resource "openstack_blockstorage_volume_v3" "new_volume_1" {
  name = "${var.new_volume_name}"
  size = "${var.new_volume_size}"

  provisioner "local-exec" {
    command = "assert('${var.expected_zone}' == '${openstack_blockstorage_volume_v3.new_volume_1.availability_zone}')"
    interpreter = ["python3", "-c"]
  }
}
