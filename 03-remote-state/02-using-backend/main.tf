# https://developer.hashicorp.com/terraform/language/settings/backends/s3


provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}
