################################################################################
# 
# Demo UAT Tests for Availability Zone (AZ) Resource
#
################################################################################

# Verify default availability zones
data "openstack_compute_availability_zones_v2" "default-availability-zones" {
  region = "${var.az-region}"
  state = "${var.az-state}"
}

resource "null_resource" "qa-verifier" {
  triggers = {
    default-availability-zones-id = "${data.openstack_compute_availability_zones_v2.default-availability-zones.id}"
  }

  provisioner "local-exec" {
    command = "assert('${var.expected-zones}' == '${join(",", data.openstack_compute_availability_zones_v2.default-availability-zones.names)}')"
    interpreter = ["python3", "-c"]
  }
}
