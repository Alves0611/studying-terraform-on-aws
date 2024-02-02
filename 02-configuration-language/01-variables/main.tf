# https://developer.hashicorp.com/terraform/language/values/variables

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}
