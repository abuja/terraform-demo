# Input variables for Demo security group module

variable "default_secgroup_name" {
  type = "string"
  description = "The name of default security group for Demo project"
  default = "default"
}

variable "new_secgroup_name" {
  type = "string"
  description = "A unique name for the security group"
  default = "terraform-demo-regression-uat-test-security-group"
}

variable "ingress_cidr_block" {
  type = "string"
  description = "The CIDR block for ingress traffic"
  default = "0.0.0.0/0"
}

variable "ingress_port_range_min" {
  type = "string"
  description = "The lower part of allowed ingress port range"
  default = "1"
}

variable "ingress_port_range_max" {
  type = "string"
  description = "The higher part of allowed ingress port range"
  default = "65535"
}
