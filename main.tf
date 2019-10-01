# Keep provider configurations in root module
provider "openstack" {
  version = "~> 1.17"
}

provider "null" {
  version = "~> 2.1"
}

module "demo-image-tests" {
  source = "./modules/demo-image-tests"

  image_source_url = "${var.cirros_image_url}"
}

module "demo-flavor-tests" {
  source = "./modules/demo-flavor-tests"
}

module "demo-network-tests" {
  source = "./modules/demo-network-tests"
}

module "demo-availability-zone-tests" {
  source = "./modules/demo-availability-zone-tests"
}

module "demo-floating-ip-tests" {
  source = "./modules/demo-floating-ip-tests"
}

module "demo-keypair-tests" {
  source = "./modules/demo-keypair-tests"
}

module "demo-port-tests" {
  source = "./modules/demo-port-tests"
}

module "demo-router-tests" {
  source = "./modules/demo-router-tests"
}

module "demo-security-group-tests" {
  source = "./modules/demo-security-group-tests"
}

module "demo-server-tests" {
  source = "./modules/demo-server-tests"

  image_id = "${lookup(module.demo-image-tests.cirros, "image_id")}"
}

module "demo-subnet-tests" {
  source = "./modules/demo-subnet-tests"
}

module "demo-volume-tests" {
  source = "./modules/demo-volume-tests"
}
