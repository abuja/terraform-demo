output "demo_test_image_name" {
  value = "${lookup(module.demo-image-tests.cirros, "image_name")}"
}

output "demo_test_image_id" {
  value = "${lookup(module.demo-image-tests.cirros, "image_id")}"
}
