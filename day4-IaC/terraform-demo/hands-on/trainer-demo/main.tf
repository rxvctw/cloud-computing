locals {
  instance_name = "${var.id}-instance"
}

data "aws_vpc" "default_vpc" {
  default = true
}

data "aws_subnet_ids" "subnet_1" {
  vpc_id = data.aws_vpc.default_vpc.id
}

resource "random_id" "suffix" {
  byte_length = 8
}

resource "aws_instance" "demo" {
  for_each      = data.aws_subnet_ids.subnet_1.ids
  ami           = var.amis[var.aws_region]
  instance_type = "t2.micro"
  tags          = {
    Name = local.instance_name
  }
}

module s3_bucket {
  source      = "./module"
  bucket_name = "${var.bucket_name}-${random_id.suffix.hex}}"
  environment = var.environment
}
