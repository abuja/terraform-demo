# Input variables for Demo flavor tests

# m1.small
variable "m1_small_name" {
  type = "string"
  description = "The name of the flavor"
  default = "m1.small"
}

variable "m1_small_vcpus" {
  type = "string"
  description = "The amount of VCPUS for m1.small flavor"
  default = "1"
}

variable "m1_small_ram" {
  type = "string"
  description = "The exact amount of RAM for m1.small flavor"
  default = "8192"
}

variable "m1_small_disk" {
  type = "string"
  description = "The exact amount of disk (in gigabytes) for m1.small flavor"
  default = "60"
}
