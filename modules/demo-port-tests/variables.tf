# Input variables for Demo port tests

variable "network_name" {
  type = "string"
  description = "The name of the network"
  default = "demo-network-1"
}

variable "new_port_name" {
  type = "string"
  description = "A unique name of the port to be created"
  default = "terraform-demo-regression-uat-test-port"
}
