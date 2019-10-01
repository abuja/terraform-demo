# Input variables for Demo availability zone tests

variable "az-region" {
  type = "string"
  description = "The region to fetch availability zones from"
  default = "us-east-3"
}

variable "az-state" {
  type = "string"
  description = "The state of the availability zone to match"
  default = "available"
}

# Expected values for test assertion
variable "expected-zones" {
  type = "string"
  description = "Expected availablity zones joined as string value"
  default = "AZ1,AZ2,AZ3"
}
