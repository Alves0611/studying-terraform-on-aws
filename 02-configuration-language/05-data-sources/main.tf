# https://developer.hashicorp.com/terraform/language/data-sources
# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/data-sources/caller_identity

provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}


