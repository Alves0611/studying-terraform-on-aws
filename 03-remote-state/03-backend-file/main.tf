# https://developer.hashicorp.com/terraform/language/settings/backends/s3


# terraform init -backend=true -backend-config="backend.hcl"

provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}
