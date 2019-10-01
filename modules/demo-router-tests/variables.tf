# Input variables for Demo router tests

variable "network_name" {
  type = "string"
  description = "The name of the network"
  default = "demo-network-1"
}

variable "new_router_name" {
  type = "string"
  description = "The name of the new router"
  default = "terraform-demo-regression-uat-test-router"
}
