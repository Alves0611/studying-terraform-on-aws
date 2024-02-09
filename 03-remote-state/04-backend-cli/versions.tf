terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.29.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.5"
    }
  }
  backend "s3" {
    bucket         = "tfstate-891377404175"
    key            = "dev/project-1/terraform.tfstate"
    region         = "us-east-1"
    profile        = "studying"
    dynamodb_table = "tflock-tfstate-891377404175"
  }
}
