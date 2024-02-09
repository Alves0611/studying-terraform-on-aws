# https://developer.hashicorp.com/terraform/language/meta-arguments/lifecycle

provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}

resource "random_pet" "this" {
  length = 4
}
