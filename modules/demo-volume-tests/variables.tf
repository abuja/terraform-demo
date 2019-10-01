# Input variables for Demo volume tests

variable "new_volume_name" {
  type = "string"
  description = "A unique name for the new volume"
  default = "terraform-demo-regression-uat-test-volume"
}

variable "new_volume_size" {
  type = "string"
  description = "The size of the volume to create in gigabytes"
  default = "10"
}

variable "expected_zone" {
  type = "string"
  description = "The expected availability zone name for block storage volume"
  default = "nova"
}
