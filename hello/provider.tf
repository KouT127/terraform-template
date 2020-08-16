variable "aws_profile" {}

terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
  }
}

provider "aws" {
  region = "ap-northeast-1"
  profile = var.aws_profile
  version = "3.2.0"
}
