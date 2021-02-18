terraform {
  backend "remote" {
    organization = "malomarrec"

    workspaces {
      name = "malomito"
    }
  }
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.0"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}


resource "aws_s3_bucket" "b" {
  bucket = "my-tf-test-bucket-efrfw-132454231"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}



resource "aws_s3_bucket" "b2" {
  bucket = "my-tf-test-bucket-efrfw-132454231-2"
  acl    = "private"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
