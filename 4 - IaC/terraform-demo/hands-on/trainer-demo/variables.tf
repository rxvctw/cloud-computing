variable "aws_region" {
  type    = string
  default = "us-east-2"
}

variable "bucket_name" {
  type    = string
  default = "infrabootcamp-bucket"
}

variable "environment" {
  type    = string
  default = "dev"
}

variable "amis" {
  type    = map(string)
  default = {
    us-east-2 = "ami-0d406e26e5ad4de53"
  }
}

variable "id" {
  type    = string
  default = "infrabootcamp-group0"
}