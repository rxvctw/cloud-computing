terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
  backend "s3" {
    bucket = "infraboocamp-state-grupo0"
    key    = "infraboocamp-demo/infraboocamp-state-grupo0.tfstate"
    region = "us-east-2"
  }
}

provider "aws" {
  region = "us-east-2"
}