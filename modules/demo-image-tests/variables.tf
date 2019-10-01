variable "default_image_name_1" {
  type = "string"
  description = "Default image that should exist after deploy"
  default = "ubuntu-16.04"
}

variable "default_image_name_2" {
  type = "string"
  description = "Default image that should exist after deploy"
  default = "ubuntu-18.04"
}

variable "image_source_url" {
  type = "string"
  description = "Download URL for the image file"
}
