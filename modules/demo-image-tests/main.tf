# Verify public images that should exist by default
data "openstack_images_image_v2" "default_image_1" {
  name = "CirrOS"
  depends_on = [
    "openstack_images_image_v2.cirros",
  ]
}

# Verify creation of new CirrOS image
resource "openstack_images_image_v2" "cirros" {
  name = "CirrOS"
  image_source_url = "${var.image_source_url}"
  container_format = "bare"
  disk_format = "qcow2"

  properties = {
    description = "CirrOS is a tiny image for Demo UAT test purpose"
  }
}
