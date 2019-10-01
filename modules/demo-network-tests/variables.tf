# Input variables for network tests

variable "network-name" {
  type = "string"
  description = "The name of the network"
  default = "demo-network-1"
}

variable "network-status" {
  type = "string"
  description = "The status of the network"
  default = "ACTIVE"
}

# new private network
variable "new_network_name" {
  type = "string"
  description = "The name of the new network to be created"
  default = "terraform-demo-regression-uat-test-network"
}
