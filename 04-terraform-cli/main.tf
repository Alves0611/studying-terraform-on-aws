# https://developer.hashicorp.com/terraform/cli/commands

# https://developer.hashicorp.com/terraform/cli/config/config-file

# https://developer.hashicorp.com/terraform/cli/config/environment-variables

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs

provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}


