# https://developer.hashicorp.com/terraform/language/expressions/for
provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}
