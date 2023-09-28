provider "aws" {
  access_key = var.access_key
  secret_key = var.secret_key
  region     = var.region
}

terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.17.0"
    }
  }

  backend "s3" {
    bucket          = "lla-datamig-tfstatefile"
    key             = "eventbridge/WithoutModule/terraform.tfstate"
    region          = "us-east-1"
    encrypt         = true
    #dynamodb_table = "lla-datamig-tfstatefile"
  }
}