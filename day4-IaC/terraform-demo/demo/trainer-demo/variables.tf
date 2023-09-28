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
    ap-south-1 = "ami-041db4a969fe3eb68"
    ap-south-2 = "ami-32434123142323412"
  }
}

variable "id" {
  type    = string
  default = "infrabootcamp-group0"
}