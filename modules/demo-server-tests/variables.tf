# Input variables for Demo server module

variable "new_server_name" {
  type = "string"
  description = "A unique name for the server resource"
  default = "terraform-demo-regression-uat-test-server"
}

variable "new_secgroup_name" {
  type = "string"
  description = "A unique name for the security group"
  default = "terraform-demo-regression-uat-test-security-group-for-server"
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

variable "image_id" {
  type = "string"
  description = "The ID of the desired image for the server"
}
