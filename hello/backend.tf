terraform {
  backend "s3" {
    key = "terraform.tfstate"
    region = "ap-northeast-1"
    encrypt = true
  }
}
