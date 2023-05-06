terraform {
  required_version = "1.4.2"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }
}

provider "aws" {
  # Configuration options
  region  = "us-east-1"
  profile = "zeferini20221227_terraform"
}


resource "aws_s3_bucket" "example" {
  bucket = "my-tf-dev-bucket-ba5f3af665864c80bclodoaldozeferinialterado"

  tags = {
    Name        = "My First Terraform bucket Alterado"
    Environment = "DEV"
    ManagedBy   = "Terraform"
    Owner       = "Clodoaldo Zeferini"
    UpdatedAt   = "2023-05-06"
  }
}