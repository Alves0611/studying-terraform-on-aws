# https://developer.hashicorp.com/terraform/language/meta-arguments/resource-provider

# utilizado quando o recurso não está disponivel na nossa região default ou para replicar recursos em outra região

provider "aws" {
  region  = "us-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
    }
  }
}

provider "aws" {
  alias   = "sao_paulo"
  region  = "sa-east-1"
  profile = "studying"

  default_tags {
    tags = {
      "ManagedBy" = "terraform"
      "Region" = "sp"
    }
  }
}


resource "random_pet" "this" {
  length = 4
}
