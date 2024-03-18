provider "aws" {
  region                  = "eu-north-1"
}

terraform {
backend "s3" {
    bucket         	   = "terraform-state-sapper-s3"
    key                = "state/terraform.tfstate"
    region         	   = "eu-north-1"
    encrypt        	   = true
    dynamodb_table = "terraform-state-lock-dynamo-sapper"
  }
}

data "aws_s3_bucket" "terraform-state-sapper-s3" {
  bucket = "terraform-state-sapper-s3"
}



