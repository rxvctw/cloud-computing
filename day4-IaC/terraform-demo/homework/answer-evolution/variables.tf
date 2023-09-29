variable "aws_region" {
  default = "us-east-2"
}

variable "path_to_private_key" {
  default = "mykey"
}

variable "path_to_public_key" {
  default = "mykey.pub"
}

variable "amis" {
  type = map(string)
  default = {
    us-east-2 = "ami-0d406e26e5ad4de53"
  }
}