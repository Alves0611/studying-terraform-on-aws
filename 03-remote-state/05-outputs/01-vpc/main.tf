# https://developer.hashicorp.com/terraform/language/state/remote-state-data

provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}
