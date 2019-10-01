output "cirros" {
  value = {
    "image_id" = "${openstack_images_image_v2.cirros.id}"
    "image_name" = "${openstack_images_image_v2.cirros.name}"
  }
}
