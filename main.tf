
terraform {
  cloud {
    organization = "karei-training"

    workspaces {
      name = "test1"
    }
  }
}

provider "aws" {
  profile = "terraform"
  region = "ap-northeast-1"
}

resource "aws_instance" "test1-instance" {
  ami = var.ami
  instance_type = var.test1_instance_type
}
