# Input variables for Demo keypair tests

variable "public_key_file" {
  type = "string"
  description = "The file path to public key"
  default = "~/.ssh/id_rsa.pub"
}
