terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.41.0"
    }
  }


  backend "s3" {
    bucket  = "jtr-course-project-tfstate"
    encrypt = true
    key     = "terraform/eks/terraform.tfstate"
    region  = "eu-west-2"
  }
}


provider "aws" {
  region = var.region

  default_tags {
    tags = {
      owner = "bigjt"
    }
  }
}



variable "region" {
  description = "aws region"
  default     = "eu-west-2"
}

