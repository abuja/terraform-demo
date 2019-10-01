# Input variables for Demo subnet tests

# demo-dev subnet
variable "default_subnet_name" {
  type = "string"
  description = "The name of the default subnet"
  default = "demo-network-1"
}

# new subnet name
variable "new_subnet_name" {
  type = "string"
  description = "The name of the new subnet to be created"
  default = "terraform-demo-regression-uat-test-subnet"
}
