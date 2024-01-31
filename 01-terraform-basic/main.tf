#https://developer.hashicorp.com/terraform/intro
#https://developer.hashicorp.com/terraform;language/providers
#https://developer.hashicorp.com/terraform;language/resources

provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}


