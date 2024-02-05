# https://developer.hashicorp.com/terraform/language/meta-arguments/depends_on
provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}
