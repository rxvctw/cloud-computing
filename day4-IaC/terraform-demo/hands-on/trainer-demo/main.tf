locals {
  instance_name = "${var.id}-instance"
}

data "aws_vpc" "default_vpc" {
  default = true
}

data "aws_subnets" "subnets" {
  filter {
    name   = "vpc-id"
    values = [data.aws_vpc.default_vpc.id]
  }
}

resource "random_id" "suffix" {
  byte_length = 8
}

resource "aws_instance" "demo" {
  for_each      = toset(data.aws_subnets.subnets.ids)
  ami           = var.amis[var.aws_region]
  instance_type = "t2.micro"
  subnet_id     = each.key
  tags          = {
    Name = local.instance_name
  }
}

module s3_bucket {
  source      = "./module"
  bucket_name = "${var.bucket_name}-${random_id.suffix.hex}}"
  environment = var.environment
}
