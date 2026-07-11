provider "aws" {
  region = var.region
}

module "vpc" {
  source = "./module/VPC"

  vpc_cidr = var.vpc_cidr
  vpc_name = var.vpc_name
}

module "s3" {
  source = "./module/S3"

  bucket_name = var.bucket_name
}
