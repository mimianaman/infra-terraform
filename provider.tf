# Configure AWS Provider
provider "aws" {
  region = var.region
}


# Configure AWS Provider for S3 Backend
# terraform {
#   required_providers {
#   aws = {
#       source  = "hashicorp/aws"
#       version = "~> 5.0"
#     }
#   }
#
#   backend "s3" {
#     bucket         = "infra-tfstate-01032025"
#     key            = "infra/terraform.tfstate"
#     region         = "eu-west-1"
#     encrypt        = true
#     use_lockfile   = true
#   }
# }