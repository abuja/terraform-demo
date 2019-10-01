# Input variables for Demo floating ip tests

variable "default_pool_name" {
  type = "string"
  description = "The name of the pool from which to obtain the floating IP"
  default = "demo-dev"
}
