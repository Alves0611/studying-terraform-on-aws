# https://developer.hashicorp.com/terraform/language/modules

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
  length = 3
}
